import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'google_sign_in_bloc.freezed.dart';
part 'google_sign_in_event.dart';
part 'google_sign_in_state.dart';

class GoogleSignInBloc extends Bloc<GoogleSignInEvent, GoogleSignInState> {
  GoogleSignInBloc(this._googleSignIn)
      : super(const GoogleSignInState.initial()) {
    on<GoogleSignInEvent>(_onGoogleLogin);
  }

  final GoogleSignIn _googleSignIn;

  Future<FutureOr<void>> _onGoogleLogin(
    GoogleSignInEvent event,
    Emitter<GoogleSignInState> emit,
  ) async {
    try {
      emit(const GoogleSignInState.loading());

      final GoogleSignInAccount? gUser = await _googleSignIn.signIn();

      final GoogleSignInAuthentication gAuth = await gUser!.authentication;

      final credentials = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken,
        idToken: gAuth.idToken,
      );

      final user =
          await FirebaseAuth.instance.signInWithCredential(credentials);

      emit(GoogleSignInState.success(gUser));
    } catch (e) {
      print(e);
      emit(const GoogleSignInState.failure('failed to login with google'));
    }
  }
}
