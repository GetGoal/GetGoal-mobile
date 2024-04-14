part of 'calendar_bloc.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.started({
    required DateTime date,
  }) = CalendarEventStarted;
}
