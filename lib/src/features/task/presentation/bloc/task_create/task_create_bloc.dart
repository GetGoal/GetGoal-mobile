import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/task.dart';
import '../../../domain/usecases/task/create_task_usecase.dart';
import '../../../domain/usecases/task/get_task_by_task_id_usecase.dart';
import '../../../domain/usecases/task/update_task_usecase.dart';

part 'task_create_event.dart';
part 'task_create_state.dart';
part 'task_create_bloc.freezed.dart';

class TaskCreateBloc extends Bloc<TaskCreateEvent, TaskCreateState> {
  TaskCreateBloc(
    this._createTaskUsecase,
    this._getTaskByTaskIdUsecase,
    this._updateTaskUsecase,
  ) : super(const TaskCreateState.initial()) {
    on<TaskCreateEventStarted>(_onTaskCreateStart);
    on<TaskCreateEventOnCreate>(_onTaskCreate);
    on<TaskCreateEventOnEdit>(_onTaskEdit);
    on<TaskCreateEventOnLoadEditData>(_onTaskLoadEditData);
  }

  final CreateTaskUsecase _createTaskUsecase;
  final GetTaskByTaskIdUsecase _getTaskByTaskIdUsecase;
  final UpdateTaskUsecase _updateTaskUsecase;

  FutureOr<void> _onTaskCreateStart(
    TaskCreateEventStarted event,
    Emitter<TaskCreateState> emit,
  ) async {
    try {
      emit(const TaskCreateState.loading());
      if (event.taskId != null) {
        final task = await _getTaskByTaskIdUsecase.call(params: event.taskId!);
        emit(TaskCreateState.initial(task: task.data!));
        emit(TaskCreateState.loadedSuccess(task: task.data!));
        return;
      }
      emit(const TaskCreateState.loadedSuccess());
    } catch (e) {
      emit(const TaskCreateState.error(message: 'error'));
    }
  }

  FutureOr<void> _onTaskCreate(
    TaskCreateEventOnCreate event,
    Emitter<TaskCreateState> emit,
  ) async {
    try {
      Task task = Task(
        taskName: event.task.taskName,
        taskDescription: event.task.taskDescription,
        isSetNotification: event.task.isSetNotification,
        startTime: event.task.startTime,
        category: event.task.category,
        timeBeforeNotify: event.task.timeBeforeNotify,
      );

      final res = await _createTaskUsecase.call(
        params: task,
      );

      if (res.data == null) {
        emit(
          const TaskCreateState.error(
            message: 'Something went wrong. Please try again',
          ),
        );
        return;
      }

      emit(const TaskCreateState.created());
    } catch (e) {
      emit(const TaskCreateState.error(message: 'error'));
    }
  }

  FutureOr<void> _onTaskEdit(
    TaskCreateEventOnEdit event,
    Emitter<TaskCreateState> emit,
  ) async {
    try {
      Task task = Task(
        taskName: event.task.taskName,
        taskDescription: event.task.taskDescription,
        isSetNotification: event.task.isSetNotification,
        startTime: event.task.startTime,
        category: event.task.category,
        timeBeforeNotify: event.task.timeBeforeNotify,
      );

      await _updateTaskUsecase.call(
        params: task,
        taskId: event.taskId,
      );

      emit(const TaskCreateState.created());
    } catch (e) {
      emit(const TaskCreateState.error(message: 'error'));
    }
  }

  FutureOr<void> _onTaskLoadEditData(
    TaskCreateEventOnLoadEditData event,
    Emitter<TaskCreateState> emit,
  ) {
    try {
      emit(const TaskCreateState.loading());
      emit(TaskCreateState.initial(task: event.task));
      emit(const TaskCreateState.loadedSuccess());
    } catch (e) {
      emit(const TaskCreateState.error(message: 'error'));
    }
  }
}
