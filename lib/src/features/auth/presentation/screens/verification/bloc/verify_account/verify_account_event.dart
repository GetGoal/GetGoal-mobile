part of 'verify_account_bloc.dart';

@freezed
class VerifyAccountEvent with _$VerifyAccountEvent {
  const factory VerifyAccountEvent.started() = VerifyAccountEventStarted;
  const factory VerifyAccountEvent.verified({
    required String code,
  }) = VerifyAccountEventVerified;
}
