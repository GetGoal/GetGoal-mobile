import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../../../core/secure_store.dart';
import '../../../../../auth/domain/usecase/auth/logout_usecase.dart';

part 'logout_event.dart';
part 'logout_state.dart';
part 'logout_bloc.freezed.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc(this._logoutUsecase, this._googleSignIn)
      : super(const LogoutState.initial()) {
    on<LogoutEventOnLogout>(_onLogout);
  }

  final LogoutUsecase _logoutUsecase;
  final GoogleSignIn _googleSignIn;
  FutureOr<void> _onLogout(
    LogoutEvent event,
    Emitter<LogoutState> emit,
  ) async {
    try {
      final res = await _logoutUsecase.call();

      if (res.code != 200) {
        emit(LogoutState.loggedOutError(message: res.error));
        return;
      }

      SecureStorage().deleteSecureData('access_token');
      SecureStorage().deleteSecureData('refresh_token');
      _googleSignIn.signOut();
      emit(const LogoutState.loggedOut());
    } catch (e) {
      emit(const LogoutState.loggedOutError(message: 'error'));
    }
  }
}
