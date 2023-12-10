part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.started() = TodoEventStarted;
  const factory TodoEvent.dateSelectorTapped({DateTime? date}) =
      TodoEventDateSelectorTapped;
}
