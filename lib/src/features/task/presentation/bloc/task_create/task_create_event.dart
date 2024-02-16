part of 'task_create_bloc.dart';

@freezed
class TaskCreateEvent with _$TaskCreateEvent {
  const factory TaskCreateEvent.started() = _Started;
  const factory TaskCreateEvent.onCreate({required Task task}) =
      TaskCreateEventOnCreate;
}
