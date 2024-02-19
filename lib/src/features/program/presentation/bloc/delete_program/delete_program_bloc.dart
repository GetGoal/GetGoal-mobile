import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/program/delete_program_usecase.dart';

part 'delete_program_event.dart';
part 'delete_program_state.dart';
part 'delete_program_bloc.freezed.dart';

class DeleteProgramBloc extends Bloc<DeleteProgramEvent, DeleteProgramState> {
  DeleteProgramBloc(
    this._deleteProgramUsecase,
  ) : super(const DeleteProgramState.initial()) {
    on<DeleteProgramEventOnDelete>(_onDelete);
  }

  final DeleteProgramUsecase _deleteProgramUsecase;

  FutureOr<void> _onDelete(
    DeleteProgramEventOnDelete event,
    Emitter<DeleteProgramState> emit,
  ) async {
    try {
      final res = await _deleteProgramUsecase.call(params: event.programId);

      if (res.code != 200) {
        emit(DeleteProgramState.deleteError(message: res.error));
        return;
      }

      emit(const DeleteProgramState.deleted());
    } catch (e) {
      emit(const DeleteProgramState.deleteError(message: 'error'));
    }
  }
}
