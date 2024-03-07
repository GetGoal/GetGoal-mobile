import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../domain/models/program.dart';
import '../../../domain/usecases/program/get_program_by_label_name_usecase.dart';
import '../../../domain/usecases/program/get_program_by_search_usecase.dart';
import '../../../domain/usecases/program/get_program_usecase.dart';

part 'program_event.dart';
part 'program_state.dart';
part 'program_bloc.freezed.dart';

class ProgramBloc extends Bloc<ProgramEvent, ProgramState> {
  ProgramBloc(
    this._getProgramUsecase,
    this._getProgramByLabelName,
    this._getProgramBySearchUsecase,
  ) : super(const ProgramState.initial()) {
    on<ProgramEventStart>(_onProgramStart);
    on<ProgramEventClicked>(_onProgramClicked);
    on<ProgramEventFilterClicked>(_onProgramFilterClicked);
    on<ProgramEventSearchProgram>(_onProgramSearch);
    on<ProgramEventSearching>(_onProgramSearching);
  }

  final GetProgramUsecase _getProgramUsecase;
  final GetProgramByLabelNameUsecase _getProgramByLabelName;
  final GetProgramBySearchUsecase _getProgramBySearchUsecase;

  final _logger = Logger(
    printer: PrettyPrinter(),
  );

  FutureOr<void> _onProgramStart(
    ProgramEventStart event,
    Emitter<ProgramState> emit,
  ) async {
    try {
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

      final listOfLabelName = <String>[];
      listOfLabelName.add(event.labelName);

      final programList =
          await _getProgramByLabelName.call(params: listOfLabelName);

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

  FutureOr<void> _onProgramSearch(
    ProgramEventSearchProgram event,
    Emitter<ProgramState> emit,
  ) async {
    try {
      emit(const ProgramState.loading());

      final programList =
          await _getProgramBySearchUsecase.call(params: event.text);

      if (programList.data!.isEmpty) {
        emit(const ProgramState.searchEmpty());
        return;
      }

      emit(ProgramState.loadedSuccess(programs: programList.data!));
    } catch (e) {
      _logger.e(e);
      emit(const ProgramState.error());
    }
  }

  FutureOr<void> _onProgramSearching(
    ProgramEventSearching event,
    Emitter<ProgramState> emit,
  ) {
    emit(const ProgramState.loadedSuccess(programs: []));
  }
}
