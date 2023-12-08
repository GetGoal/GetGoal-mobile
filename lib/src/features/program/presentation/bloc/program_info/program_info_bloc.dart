import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../domain/models/program.dart';
import '../../../domain/usecases/program/get_program_by_id_usecase.dart';

part 'program_info_event.dart';
part 'program_info_state.dart';
part 'program_info_bloc.freezed.dart';

class ProgramInfoBloc extends Bloc<ProgramInfoEvent, ProgramInfoState> {
  ProgramInfoBloc(
    this._getProgramByIdUsecase,
  ) : super(const ProgramInfoState.initial()) {
    on<ProgramInfoEventStarted>(_onProgramInfoStarted);
  }

  final GetProgramByIdUsecase _getProgramByIdUsecase;

  final _logger = Logger(
    printer: PrettyPrinter(),
  );

  FutureOr<void> _onProgramInfoStarted(
    ProgramInfoEventStarted event,
    Emitter<ProgramInfoState> emit,
  ) async {
    try {
      emit(const ProgramInfoState.loading());

      final program =
          await _getProgramByIdUsecase.call(params: event.programId!);

      // _logger.d(program.data);
      if (program.data == null) {
        emit(const ProgramInfoState.error());
        return;
      }

      emit(ProgramInfoState.loadedSuccess(program: program.data));
    } catch (e) {
      _logger.e('ProgramInfoStateError:', error: e);
      emit(const ProgramInfoState.error());
    }
  }
}
