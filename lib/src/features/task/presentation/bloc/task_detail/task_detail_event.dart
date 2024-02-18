part of 'task_detail_bloc.dart';

@freezed
class TaskDetailEvent with _$TaskDetailEvent {
  const factory TaskDetailEvent.started({
    required String taskId,
  }) = TaskDetailEventStarted;
  const factory TaskDetailEvent.onTappedEdit({
    required String taskId,
  }) = TaskDetailEventOnTappedEdit;
  const factory TaskDetailEvent.onTappedDelete({
    required String taskId,
  }) = TaskDetailEventOnTappedDelete;
}
