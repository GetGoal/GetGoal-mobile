import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/bases/base_data.dart';
import '../../../../../../user/domain/usecases/reset_user_password_usecase.dart';

part 'new_password_event.dart';
part 'new_password_state.dart';
part 'new_password_bloc.freezed.dart';

class NewPasswordBloc extends Bloc<NewPasswordEvent, NewPasswordState> {
  NewPasswordBloc(
    this._resetUserPasswordUsecase,
  ) : super(const NewPasswordState.initial()) {
    on<NewPasswordEventOnSubmited>(_onResetPassword);
  }

  final ResetUserPasswordUsecase _resetUserPasswordUsecase;

  FutureOr<void> _onResetPassword(
    NewPasswordEventOnSubmited event,
    Emitter<NewPasswordState> emit,
  ) async {
    try {
      emit(const NewPasswordState.loading());

      final res = await _resetUserPasswordUsecase.call(
        params: event.email,
        password: event.password,
      );
      if (res.code == 201) {
        emit(NewPasswordState.failure(message: res.error));
        return;
      }
      emit(const NewPasswordState.success());
    } on DataFailed catch (e) {
      emit(NewPasswordState.failure(message: e.error.toString()));
    }
  }
}
