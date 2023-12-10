part of 'task_planning_bloc.dart';

@freezed
class TaskPlanningState with _$TaskPlanningState {
  const factory TaskPlanningState.initial() = TaskPlanningStateInitial;
  const factory TaskPlanningState.loading() = TaskPlanningStateLoading;
  const factory TaskPlanningState.loadedSuccess({
    required List<Task> tasks,
  }) = TaskPlanningStateLoadedSuccess;
  const factory TaskPlanningState.empty() = TaskPlanningStateEmpty;
  const factory TaskPlanningState.error() = TaskPlanningStateError;

  const factory TaskPlanningState.joinedProgram() =
      TaskPlanningStateJoinedProgram;
  const factory TaskPlanningState.joinedProgramError() =
      TaskPlanningStateJoinedProgramError;
}
