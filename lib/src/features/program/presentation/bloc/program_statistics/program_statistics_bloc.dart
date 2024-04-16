import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/program_statistics.dart';
import '../../../domain/usecases/program/get_program_statistics_usecase.dart';

part 'program_statistics_event.dart';
part 'program_statistics_state.dart';
part 'program_statistics_bloc.freezed.dart';

class ProgramStatisticsBloc
    extends Bloc<ProgramStatisticsEvent, ProgramStatisticsState> {
  ProgramStatisticsBloc(
    this._getProgramStatisticsUsecase,
  ) : super(const ProgramStatisticsState.initial()) {
    on<ProgramStatisticsEvent>(_onStarted);
  }

  final GetProgramStatisticsUsecase _getProgramStatisticsUsecase;

  FutureOr<void> _onStarted(
    ProgramStatisticsEvent event,
    Emitter<ProgramStatisticsState> emit,
  ) async {
    try {
      emit(const ProgramStatisticsState.loading());

      final res =
          await _getProgramStatisticsUsecase.call(params: event.programId);

      if (res.code != 200) {
        emit(const ProgramStatisticsState.failure());
        return;
      }
      emit(ProgramStatisticsState.success(programStatistics: res.data!));
    } catch (e) {
      emit(const ProgramStatisticsState.failure());
    }
  }
}
