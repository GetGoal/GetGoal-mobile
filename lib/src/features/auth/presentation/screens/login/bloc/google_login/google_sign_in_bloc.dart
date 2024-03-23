import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../../../../core/secure_store.dart';
import '../../../../../domain/usecase/auth/google_sign_in_usecase.dart';

part 'google_sign_in_bloc.freezed.dart';
part 'google_sign_in_event.dart';
part 'google_sign_in_state.dart';

class GoogleSignInBloc extends Bloc<GoogleSignInEvent, GoogleSignInState> {
  GoogleSignInBloc(this._googleSignInUsecase, this._googleSignIn)
      : super(const GoogleSignInState.initial()) {
    on<GoogleSignInEvent>(_onGoogleLogin);
  }

  final GoogleSignInUsecase _googleSignInUsecase;
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
      await FirebaseAuth.instance.signInWithCredential(credentials);

      final res = await _googleSignInUsecase.call(params: gUser);

      if (res.code != 200) {
        log(res.error!);
        emit(GoogleSignInState.failure(res.error!));
      }

      SecureStorage().writeSecureData('access_token', res.data!.accessToken!);
      SecureStorage().writeSecureData('refresh_token', res.data!.refreshToken!);

      emit(const GoogleSignInState.success());
    } catch (e) {
      log(e.toString());
      _googleSignIn.signOut();
      emit(const GoogleSignInState.failure('failed to login with google'));
    }
  }
}
