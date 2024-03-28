import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/app_cache.dart';
import '../../../domain/entities/program.dart';
import '../../../domain/entities/program_create.dart';
import '../../../domain/usecases/program/edit_program_by_id_usecase.dart';
import '../../../domain/usecases/program/get_program_by_id_usecase.dart';

part 'program_edit_event.dart';
part 'program_edit_state.dart';
part 'program_edit_bloc.freezed.dart';

class ProgramEditBloc extends Bloc<ProgramEditEvent, ProgramEditState> {
  ProgramEditBloc(
    this._getProgramByIdUsecase,
    this._editProgramByIdUsecase,
  ) : super(const ProgramEditState.initial()) {
    on<ProgramEditEventStarted>(_onProgramEditStarted);
    on<ProgramEditEventOnEdit>(_onProgramEditOnEdited);
  }

  final GetProgramByIdUsecase _getProgramByIdUsecase;
  final EditProgramByIdUsecase _editProgramByIdUsecase;

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

  FutureOr<void> _onProgramEditOnEdited(
    ProgramEditEventOnEdit event,
    Emitter<ProgramEditState> emit,
  ) async {
    try {
      emit(const ProgramEditState.loading());

      await _editProgramByIdUsecase.call(
        params: event.programData,
        programId: event.programId,
      );

      emit(const ProgramEditState.success());
    } catch (e) {
      emit(const ProgramEditState.failure(message: 'error'));
    }
  }
}
