part of 'forget_password_bloc.dart';

@freezed
class ForgetPasswordState with _$ForgetPasswordState {
  const factory ForgetPasswordState.initial() = ForgetPasswordStateInitial;
  const factory ForgetPasswordState.loading() = ForgetPasswordStateLoading;
  const factory ForgetPasswordState.success() = ForgetPasswordStateSuccess;
  const factory ForgetPasswordState.failure({
    String? message,
  }) = ForgetPasswordStateFailure;
}
