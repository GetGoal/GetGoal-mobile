import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../program/domain/entities/program.dart';
import '../../../../domain/usecases/get_user_join_program_usecase.dart';
import '../../../../domain/usecases/get_user_program_usecase.dart';
import '../../../../domain/usecases/get_user_save_program_usecase.dart';

part 'user_program_event.dart';
part 'user_program_state.dart';
part 'user_program_bloc.freezed.dart';

class UserProgramBloc extends Bloc<UserProgramEvent, UserProgramState> {
  UserProgramBloc(
    this._getUserProgramUsecase,
    this._getUserSaveProgramUsecase,
    this._getUserJoinProgramUsecase,
  ) : super(const UserProgramState.initial()) {
    on<UserProgramEventStarted>(_onStarted);
    on<UserProgramEventOnSaveTapped>(_onSaveTapped);
    on<UserProgramEventOnJoinTapped>(_onJoinTapped);
  }

  final GetUserProgramUsecase _getUserProgramUsecase;
  final GetUserSaveProgramUsecase _getUserSaveProgramUsecase;
  final GetUserJoinProgramUsecase _getUserJoinProgramUsecase;

  FutureOr<void> _onStarted(
    UserProgramEventStarted event,
    Emitter<UserProgramState> emit,
  ) async {
    try {
      final res = await _getUserProgramUsecase.call();
      if (res.code != 200) {
        log(res.error!);
        emit(const UserProgramState.error());
        return;
      }

      emit(UserProgramState.loadedSuccess(programList: res.data!));
    } catch (e) {
      emit(const UserProgramState.error());
    }
  }

  FutureOr<void> _onSaveTapped(
    UserProgramEventOnSaveTapped event,
    Emitter<UserProgramState> emit,
  ) async {
    try {
      final res = await _getUserSaveProgramUsecase.call();

      if (res.code != 200) {
        log(res.error!);
        emit(const UserProgramState.error());
        return;
      }

      emit(UserProgramState.loadedSuccess(programList: res.data!));
    } catch (e) {
      emit(const UserProgramState.error());
    }
  }

  FutureOr<void> _onJoinTapped(UserProgramEventOnJoinTapped event,
      Emitter<UserProgramState> emit) async {
    try {
      final res = await _getUserJoinProgramUsecase.call();

      if (res.code != 200) {
        log(res.error!);
        emit(const UserProgramState.error());
        return;
      }

      emit(UserProgramState.loadedSuccess(programList: res.data!));
    } catch (e) {
      emit(const UserProgramState.error());
    }
  }
}
