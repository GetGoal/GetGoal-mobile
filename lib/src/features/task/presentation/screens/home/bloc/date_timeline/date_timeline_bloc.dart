import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_timeline_event.dart';
part 'date_timeline_state.dart';
part 'date_timeline_bloc.freezed.dart';

class DateTimelineBloc extends Bloc<DateTimelineEvent, DateTimelineState> {
  DateTimelineBloc()
      : super(DateTimelineStateInitial(currentDate: DateTime.now())) {
    on<DateTimelineEventStarted>(_onDateTimelineStart);
    on<DateTimelineEventTapped>(_onDateTimelineTapped);
  }

  FutureOr<void> _onDateTimelineStart(
    DateTimelineEventStarted event,
    Emitter<DateTimelineState> emit,
  ) {
    emit(const DateTimelineState.loading());
    emit(DateTimelineState.loadedSuccess(selectedDate: DateTime.now()));
  }

  FutureOr<void> _onDateTimelineTapped(
    DateTimelineEventTapped event,
    Emitter<DateTimelineState> emit,
  ) {
    emit(DateTimelineState.loadedSuccess(selectedDate: event.selectedTime!));
  }
}
