part of 'date_timeline_bloc.dart';

@freezed
class DateTimelineState with _$DateTimelineState {
  const factory DateTimelineState.initial({required DateTime currentDate}) =
      DateTimelineStateInitial;
  const factory DateTimelineState.loading() = DateTimelineStateLoading;
  const factory DateTimelineState.loadedSuccess({
    required DateTime selectedDate,
  }) = DateTimelineStateLoadedSuccess;
  const factory DateTimelineState.error() = DateTimelineStateError;
}
