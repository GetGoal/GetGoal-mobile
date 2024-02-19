part of 'task_create_bloc.dart';

@freezed
class TaskCreateEvent with _$TaskCreateEvent {
  const factory TaskCreateEvent.started({
    String? taskId,
  }) = TaskCreateEventStarted;
  const factory TaskCreateEvent.onCreate({required Task task}) =
      TaskCreateEventOnCreate;
  const factory TaskCreateEvent.onEdit({
    required Task task,
    required String taskId,
  }) = TaskCreateEventOnEdit;
}
