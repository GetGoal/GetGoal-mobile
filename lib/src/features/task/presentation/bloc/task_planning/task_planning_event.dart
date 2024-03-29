part of 'task_planning_bloc.dart';

@freezed
class TaskPlanningEvent with _$TaskPlanningEvent {
  const factory TaskPlanningEvent.started({
    required String programId,
  }) = StartedEvent;
  const factory TaskPlanningEvent.created({
    required List<Task> tasks,
    required String programId,
  }) = CreatedEvent;
  const factory TaskPlanningEvent.loadEditedTask({
    required List<Task> tasks,
  }) = TaskPlanningEventLoadEditedTask;
}
