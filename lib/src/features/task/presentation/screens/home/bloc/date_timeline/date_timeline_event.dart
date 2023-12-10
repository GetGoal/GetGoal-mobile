part of 'date_timeline_bloc.dart';

@freezed
class DateTimelineEvent with _$DateTimelineEvent {
  const factory DateTimelineEvent.started() = DateTimelineEventStarted;
  const factory DateTimelineEvent.tapped({
    required DateTime? selectedTime,
  }) = DateTimelineEventTapped;
}
