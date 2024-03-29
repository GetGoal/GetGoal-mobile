import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/bases/base_data.dart';
import '../../../../../domain/usecase/auth/verify_password_reset_usecase.dart';

part 'verify_password_reset_event.dart';
part 'verify_password_reset_state.dart';
part 'verify_password_reset_bloc.freezed.dart';

class VerifyPasswordResetBloc
    extends Bloc<VerifyPasswordResetEvent, VerifyPasswordResetState> {
  VerifyPasswordResetBloc(
    this._passwordResetUsecase,
  ) : super(const VerifyPasswordResetState.initial()) {
    on<VerifyPasswordResetEventOnVerify>(_onVerify);
  }

  final VerfifyPasswordResetUsecase _passwordResetUsecase;

  FutureOr<void> _onVerify(
    VerifyPasswordResetEventOnVerify event,
    Emitter<VerifyPasswordResetState> emit,
  ) async {
    try {
      emit(const VerifyPasswordResetState.loading());
      final res = await _passwordResetUsecase.call(params: event.code);
      if (res.code != 200) {
        emit(VerifyPasswordResetState.failure(message: res.error));
        return;
      }

      emit(const VerifyPasswordResetState.success());
    } on DataFailed catch (e) {
      emit(VerifyPasswordResetState.failure(message: e.error.toString()));
    }
  }
}
