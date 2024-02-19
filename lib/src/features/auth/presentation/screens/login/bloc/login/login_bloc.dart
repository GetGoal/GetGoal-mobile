import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/secure_store.dart';
import '../../../../../domain/entity/login_entity.dart';
import '../../../../../domain/usecase/auth/login_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(
    this._loginUsecase,
  ) : super(const LoginState.initial()) {
    on<LoginEventOnLogin>(_onLogin);
  }

  final LoginUsecase _loginUsecase;

  FutureOr<void> _onLogin(
    LoginEventOnLogin event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(const LoginState.loading());
      final loginData = LoginEntity(
        email: event.email.trim(),
        password: event.password,
      );
      final res = await _loginUsecase.call(params: loginData);
      if (res.code != 200) {
        log(res.error!);
        emit(LoginState.loginError(message: res.error));
        return;
      }

      SecureStorage().writeSecureData('access_token', res.data!.accessToken!);
      SecureStorage().writeSecureData('refresh_token', res.data!.refreshToken!);

      emit(const LoginState.loginSuccess());
    } catch (e) {
      emit(const LoginState.loginError());
    }
  }
}
