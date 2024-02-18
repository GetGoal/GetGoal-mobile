part of 'task_create_bloc.dart';

@freezed
class TaskCreateState with _$TaskCreateState {
  const factory TaskCreateState.initial() = TaskCreateStateInitial;
  const factory TaskCreateState.loading() = TaskCreateStateLoading;
  const factory TaskCreateState.loadedSuccess({
    Task? task,
  }) = TaskCreateStateLoadedSuccess;
  const factory TaskCreateState.error({
    String? message,
  }) = TaskCreateStateError;
  const factory TaskCreateState.created() = TaskCreateStateCreated;
}
