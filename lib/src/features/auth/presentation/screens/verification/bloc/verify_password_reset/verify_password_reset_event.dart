part of 'verify_password_reset_bloc.dart';

@freezed
class VerifyPasswordResetEvent with _$VerifyPasswordResetEvent {
  const factory VerifyPasswordResetEvent.started() =
      VerifyPasswordResetEventStarted;
  const factory VerifyPasswordResetEvent.onVerify({
    required String code,
  }) = VerifyPasswordResetEventOnVerify;
}
