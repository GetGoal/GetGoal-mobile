import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../program/domain/models/program.dart';
import '../../../../domain/usecases/get_user_program_usecase.dart';

part 'user_program_event.dart';
part 'user_program_state.dart';
part 'user_program_bloc.freezed.dart';

class UserProgramBloc extends Bloc<UserProgramEvent, UserProgramState> {
  UserProgramBloc(
    this._getUserProgramUsecase,
  ) : super(const UserProgramState.initial()) {
    on<UserProgramEventStarted>(_onStarted);
  }

  final GetUserProgramUsecase _getUserProgramUsecase;

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
}
