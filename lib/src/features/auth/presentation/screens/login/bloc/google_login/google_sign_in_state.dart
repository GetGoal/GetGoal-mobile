part of 'google_sign_in_bloc.dart';

@freezed
class GoogleSignInState with _$GoogleSignInState {
  const factory GoogleSignInState.initial() = GoogleSignInInitial;
  const factory GoogleSignInState.loading() = GoogleSignInLoading;
  const factory GoogleSignInState.success(GoogleSignInAccount account) =
      GoogleSignInSuccess;
  const factory GoogleSignInState.failure(String error) = GoogleSignInFailure;
}
