import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
        email: event.email,
        password: event.password,
      );
      final res = await _loginUsecase.call(params: loginData);
      if (res.code != 200) {
        emit(const LoginState.loginError());
        return;
      }
      emit(const LoginState.loginSuccess());
    } catch (e) {
      emit(const LoginState.loginError());
    }
  }
}
