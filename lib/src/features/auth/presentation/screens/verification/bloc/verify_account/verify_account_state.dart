part of 'verify_account_bloc.dart';

@freezed
class VerifyAccountState with _$VerifyAccountState {
  const factory VerifyAccountState.initial() = VerifyAccountStateInitial;
  const factory VerifyAccountState.loading() = VerifyAccountStateLoading;
  const factory VerifyAccountState.verified() = VerifyAccountStateVerified;
  const factory VerifyAccountState.verifiedError({
    String? message,
  }) = VerifyAccountStateVirifiedError;
}
