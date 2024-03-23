import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/entities/program_create.dart';
import '../../../../../domain/usecases/program/create_program_usecase.dart';

part 'program_create_event.dart';
part 'program_create_state.dart';
part 'program_create_bloc.freezed.dart';

class CreateProgramBloc extends Bloc<CreateProgramEvent, CreateProgramState> {
  CreateProgramBloc(
    this._createProgramUsecase,
  ) : super(const CreateProgramState.initial()) {
    on<CreateProgramEventStarted>(_onStarted);
    on<CreateProgramEventOnCreated>(_onCreate);
  }

  final CreateProgramUsecase _createProgramUsecase;
  FutureOr<void> _onStarted(
    CreateProgramEventStarted event,
    Emitter<CreateProgramState> emit,
  ) async {
    emit(const CreateProgramState.initial());
  }

  FutureOr<void> _onCreate(
    CreateProgramEventOnCreated event,
    Emitter<CreateProgramState> emit,
  ) async {
    try {
      emit(const CreateProgramState.loading());

      final res = await _createProgramUsecase.call(params: event.programData);

      if (res.code != 201) {
        emit(CreateProgramState.createdError(message: res.error));
        return;
      }

      emit(const CreateProgramState.created());
    } catch (e) {
      emit(const CreateProgramState.createdError());
    }
  }
}
