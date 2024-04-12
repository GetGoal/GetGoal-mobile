import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../../../../core/secure_store.dart';
import '../../../../../../user/domain/usecases/get_user_profile_usecase.dart';
import '../../../../../domain/usecase/auth/google_sign_in_usecase.dart';

part 'google_sign_in_bloc.freezed.dart';
part 'google_sign_in_event.dart';
part 'google_sign_in_state.dart';

class GoogleSignInBloc extends Bloc<GoogleSignInEvent, GoogleSignInState> {
  GoogleSignInBloc(
    this._googleSignInUsecase,
    this._googleSignIn,
    this._getUserProfileUsecase,
  ) : super(const GoogleSignInState.initial()) {
    on<GoogleSignInEvent>(_onGoogleLogin);
  }

  final GoogleSignInUsecase _googleSignInUsecase;
  final GoogleSignIn _googleSignIn;
  final GetUserProfileUsecase _getUserProfileUsecase;

  FutureOr<void> _onGoogleLogin(
    GoogleSignInEvent event,
    Emitter<GoogleSignInState> emit,
  ) async {
    try {
      await SecureStorage().deleteSecureData('access_token');
      await SecureStorage().deleteSecureData('refresh_token');

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

      await SecureStorage()
          .writeSecureData('access_token', res.data!.accessToken!);
      await SecureStorage()
          .writeSecureData('refresh_token', res.data!.refreshToken!);

      try {
        final user = await _getUserProfileUsecase.call();

        if (user.code != 200) {
          emit(const GoogleSignInState.failure('failed to login with google'));
          return;
        }

        if (user.data!.labels!.isEmpty) {
          emit(const GoogleSignInState.incompletePreference());
          return;
        }
      } catch (e) {
        emit(const GoogleSignInState.failure('failed to login with google'));
      }

      emit(const GoogleSignInState.success());
    } catch (e) {
      log(e.toString());
      _googleSignIn.signOut();
      emit(const GoogleSignInState.failure('failed to login with google'));
    }
  }
}
