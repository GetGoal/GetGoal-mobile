part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginStateInitial;
  const factory LoginState.loading() = LoginStateLoading;
  const factory LoginState.loginSuccess() = LoginStateLoginSuccess;
  const factory LoginState.loginError({
    String? message,
  }) = LoginStateLoginError;
}
