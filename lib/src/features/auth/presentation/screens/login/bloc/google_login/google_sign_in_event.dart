part of 'google_sign_in_bloc.dart';

@freezed
class GoogleSignInEvent with _$GoogleSignInEvent {
  const factory GoogleSignInEvent.started() = GoogleSignInStarted;
  const factory GoogleSignInEvent.onGoogleLogin() = GoogleSignInOnGoogleLogin;
}
