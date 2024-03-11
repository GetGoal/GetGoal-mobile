import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/task.dart';
import '../../../domain/usecases/task/delete_task_usecase.dart';
import '../../../domain/usecases/task/get_task_by_task_id_usecase.dart';

part 'task_detail_event.dart';
part 'task_detail_state.dart';
part 'task_detail_bloc.freezed.dart';

class TaskDetailBloc extends Bloc<TaskDetailEvent, TaskDetailState> {
  TaskDetailBloc(this._getTaskByTaskIdUsecase, this._deleteTaskUsecase)
      : super(const TaskDetailState.initial()) {
    on<TaskDetailEventStarted>(_onTaskDetailStart);
    on<TaskDetailEventOnTappedDelete>(_onTaskDeleted);
  }

  final GetTaskByTaskIdUsecase _getTaskByTaskIdUsecase;
  final DeleteTaskUsecase _deleteTaskUsecase;

  FutureOr<void> _onTaskDetailStart(
    TaskDetailEventStarted event,
    Emitter<TaskDetailState> emit,
  ) async {
    try {
      final taskDetail =
          await _getTaskByTaskIdUsecase.call(params: event.taskId);

      if (taskDetail.data == null) {
        return;
      }

      emit(TaskDetailState.loadedSuccess(task: taskDetail.data!));
    } catch (e) {
      emit(const TaskDetailState.error());
    }
  }

  FutureOr<void> _onTaskDeleted(
    TaskDetailEventOnTappedDelete event,
    Emitter<TaskDetailState> emit,
  ) async {
    try {
      final taskDetail = await _deleteTaskUsecase.call(params: event.taskId);

      if (taskDetail.data == null) {
        return;
      }

      // emit(TaskDetailState.loadedSuccess(task: taskDetail.data!));
    } catch (e) {
      emit(const TaskDetailState.error());
    }
  }
}
