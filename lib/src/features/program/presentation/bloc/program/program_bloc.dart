import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../domain/models/program.dart';
import '../../../domain/usecases/program/get_program_by_label_name_usecase.dart';
import '../../../domain/usecases/program/get_program_usecase.dart';

part 'program_event.dart';
part 'program_state.dart';
part 'program_bloc.freezed.dart';

class ProgramBloc extends Bloc<ProgramEvent, ProgramState> {
  ProgramBloc(this._getProgramUsecase, this._getProgramByLabelName)
      : super(const ProgramState.initial()) {
    on<ProgramEventStart>(_onProgramStart);
    on<ProgramEventClicked>(_onProgramClicked);
    on<ProgramEventFilterClicked>(_onProgramFilterClicked);
  }

  final GetProgramUsecase _getProgramUsecase;
  final GetProgramByLabelNameUsecase _getProgramByLabelName;

  final _logger = Logger(
    printer: PrettyPrinter(),
  );

  FutureOr<void> _onProgramStart(
    ProgramEventStart event,
    Emitter<ProgramState> emit,
  ) async {
    try {
      emit(const ProgramState.loading());

      final programList = await _getProgramUsecase.call();

      if (programList.data!.isEmpty) {
        emit(const ProgramState.programEmpty());
        return;
      }

      emit(ProgramState.loadedSuccess(programs: programList.data!));
    } catch (e) {
      _logger.e('ProgramStateError:', error: e);
      emit(const ProgramState.error());
    }
  }

  FutureOr<void> _onProgramClicked(
    ProgramEventClicked event,
    Emitter<ProgramState> emit,
  ) {}

  FutureOr<void> _onProgramFilterClicked(
    ProgramEventFilterClicked event,
    Emitter<ProgramState> emit,
  ) async {
    try {
      emit(const ProgramState.loading());

      final programList =
          await _getProgramByLabelName.call(params: event.labelName);

      if (programList.data!.isEmpty) {
        emit(const ProgramState.programEmpty());
        return;
      }
      emit(ProgramState.loadedSuccess(programs: programList.data!));
    } catch (e) {
      _logger.e(e);
      emit(const ProgramState.error());
    }
  }
}
