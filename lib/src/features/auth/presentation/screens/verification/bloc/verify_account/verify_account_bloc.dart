import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/usecase/auth/verify_account_usecase.dart';

part 'verify_account_event.dart';
part 'verify_account_state.dart';
part 'verify_account_bloc.freezed.dart';

class VerifyAccountBloc extends Bloc<VerifyAccountEvent, VerifyAccountState> {
  VerifyAccountBloc(
    this._verfifyAccountUsecase,
  ) : super(const VerifyAccountState.initial()) {
    on<VerifyAccountEventVerified>(_onVerified);
  }

  final VerfifyAccountUsecase _verfifyAccountUsecase;

  FutureOr<void> _onVerified(
    VerifyAccountEventVerified event,
    Emitter<VerifyAccountState> emit,
  ) async {
    try {
      emit(const VerifyAccountState.loading());
      final res = await _verfifyAccountUsecase.call(params: event.code);
      if (res.code != 200) {
        emit(VerifyAccountState.verifiedError(message: res.error));
        return;
      }

      emit(const VerifyAccountState.verified());
    } catch (e) {
      emit(const VerifyAccountState.verifiedError());
    }
  }
}
