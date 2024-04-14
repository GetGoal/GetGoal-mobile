import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/bases/base_data.dart';
import '../../../domain/entities/event.dart';
import '../../../domain/usecases/get_avaliable_calendar_task_usecase.dart';

part 'calendar_event.dart';
part 'calendar_state.dart';
part 'calendar_bloc.freezed.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc(
    this._getAvaliableCalendarTaskUsecase,
  ) : super(const CalendarState.initial()) {
    on<CalendarEventStarted>(_onCalendarStarted);
  }

  final GetAvaliableCalendarTaskUsecase _getAvaliableCalendarTaskUsecase;

  FutureOr<void> _onCalendarStarted(
    CalendarEventStarted event,
    Emitter<CalendarState> emit,
  ) async {
    try {
      final res =
          await _getAvaliableCalendarTaskUsecase.call(params: event.date);

      if (res.code != 200) {
        emit(const CalendarState.failure());
        return;
      }

      DateTime today = event.date;
      Map<DateTime, List<Event>> map = {};

      for (var i = 0; i < res.data!.length; i++) {
        DateTime newDate = DateTime(today.year, today.month, res.data![i]);
        map[newDate] = [Event(day: '$newDate')];
      }

      emit(CalendarState.loading(date: map));
      emit(const CalendarState.success());
    } on DataFailed catch (e) {
      log(e.toString());
      emit(const CalendarState.failure());
    }
  }
}
