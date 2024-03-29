part of 'verify_password_reset_bloc.dart';

@freezed
class VerifyPasswordResetState with _$VerifyPasswordResetState {
  const factory VerifyPasswordResetState.initial() =
      VerifyPasswordResetStateInitial;
  const factory VerifyPasswordResetState.loading() =
      VerifyPasswordResetStateLoading;
  const factory VerifyPasswordResetState.success() =
      VerifyPasswordResetStateSuccess;
  const factory VerifyPasswordResetState.failure({
    String? message,
  }) = VerifyPasswordResetStateFailure;
}
