import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/program.dart';
import '../../../domain/usecases/program/get_program_by_id_usecase.dart';

part 'program_edit_event.dart';
part 'program_edit_state.dart';
part 'program_edit_bloc.freezed.dart';

class ProgramEditBloc extends Bloc<ProgramEditEvent, ProgramEditState> {
  ProgramEditBloc(
    this._getProgramByIdUsecase,
  ) : super(const ProgramEditState.initial()) {
    on<ProgramEditEventStarted>(_onProgramEditStarted);
  }

  final GetProgramByIdUsecase _getProgramByIdUsecase;

  FutureOr<void> _onProgramEditStarted(
    ProgramEditEventStarted event,
    Emitter<ProgramEditState> emit,
  ) async {
    try {
      emit(const ProgramEditState.loading());
      if (event.programId != null) {
        final program = await _getProgramByIdUsecase.call(
          params: event.programId!,
        );
        emit(ProgramEditState.initial(program: program.data));
        emit(ProgramEditState.success(program: program.data));
        return;
      }
      emit(const ProgramEditState.success());
    } catch (e) {
      emit(const ProgramEditState.failure(message: 'error'));
    }
  }
}
