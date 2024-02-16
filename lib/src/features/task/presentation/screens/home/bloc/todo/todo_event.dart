part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.started(
    DateTime? date,
  ) = TodoEventStarted;
  const factory TodoEvent.dateSelectorTapped({
    DateTime? date,
  }) = TodoEventDateSelectorTapped;
  const factory TodoEvent.changeTaskStatusToDone({
    required String taskId,
  }) = TodoEventChangeTaskStatusToDone;
  const factory TodoEvent.changeTaskStatusToNotDone({
    required String taskId,
  }) = TodoEventChagenTaskStatusToNotDone;
}
