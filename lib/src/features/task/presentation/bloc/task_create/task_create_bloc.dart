import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/task.dart';
import '../../../domain/usecases/task/create_task_usecase.dart';
import '../../../domain/usecases/task/delete_task_usecase.dart';

part 'task_create_event.dart';
part 'task_create_state.dart';
part 'task_create_bloc.freezed.dart';

class TaskCreateBloc extends Bloc<TaskCreateEvent, TaskCreateState> {
  TaskCreateBloc(
    this._createTaskUsecase,
    this._deleteTaskUsecase,
  ) : super(const TaskCreateState.initial()) {
    on<TaskCreateEventOnCreate>(_onTaskCreate);
  }

  final CreateTaskUsecase _createTaskUsecase;
  final DeleteTaskUsecase _deleteTaskUsecase;

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

      await _createTaskUsecase.call(params: task);

      emit(const TaskCreateState.created());
    } catch (e) {
      emit(const TaskCreateState.error(message: 'error'));
    }
  }
}
