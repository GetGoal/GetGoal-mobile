part of 'logout_bloc.dart';

@freezed
class LogoutState with _$LogoutState {
  const factory LogoutState.initial() = LogoutStateInitial;
  const factory LogoutState.loading() = LogoutStateLoading;
  const factory LogoutState.loggedOut() = LogoutStateloaggedOut;
  const factory LogoutState.loggedOutError({
    String? message,
  }) = LogoutStateLoggedOutError;
}
