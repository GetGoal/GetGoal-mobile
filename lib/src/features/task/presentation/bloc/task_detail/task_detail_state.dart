part of 'task_detail_bloc.dart';

@freezed
class TaskDetailState with _$TaskDetailState {
  const factory TaskDetailState.initial() = TaskDetailStateInitial;
  const factory TaskDetailState.loading() = TaskDetailStateLoading;
  const factory TaskDetailState.loadedSuccess({
    required Task task,
  }) = TaskDetailStateLoadedSuccess;
  const factory TaskDetailState.error() = TaskDetailStateError;
}