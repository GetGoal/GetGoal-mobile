import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/bases/base_data.dart';
import '../../../../../domain/usecase/auth/reset_password_usecase.dart';

part 'forget_password_event.dart';
part 'forget_password_state.dart';
part 'forget_password_bloc.freezed.dart';

class ForgetPasswordBloc
    extends Bloc<ForgetPasswordEvent, ForgetPasswordState> {
  ForgetPasswordBloc(
    this._resetPasswordUsecase,
  ) : super(const ForgetPasswordState.initial()) {
    on<ForgetPasswordEventStarted>(_onStarted);
    on<ForgetPasswordEventOnSubmited>(_onSubmited);
  }

  final ResetPasswordUsecase _resetPasswordUsecase;

  FutureOr<void> _onStarted(
    ForgetPasswordEventStarted event,
    Emitter<ForgetPasswordState> emit,
  ) {
    emit(const ForgetPasswordState.initial());
  }

  FutureOr<void> _onSubmited(
    ForgetPasswordEventOnSubmited event,
    Emitter<ForgetPasswordState> emit,
  ) async {
    try {
      emit(const ForgetPasswordState.loading());
      final res = await _resetPasswordUsecase(params: event.email);
      if (res.code == 201) {
        emit(ForgetPasswordState.failure(message: res.error));
        return;
      }
      emit(ForgetPasswordState.success(message: res.message));
    } on DataFailed catch (e) {
      emit(ForgetPasswordState.failure(message: e.error.toString()));
    }
  }
}
