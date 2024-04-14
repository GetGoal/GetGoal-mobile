part of 'calendar_bloc.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState.initial() = CalendarStateInitial;
  const factory CalendarState.loading({
    required Map<DateTime, List<Event>> date,
  }) = CalendarStateLoading;
  const factory CalendarState.success() = CalendarStateSuccess;
  const factory CalendarState.failure() = CalendarStateFailure;
}
