import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/secure_store.dart';
import '../../../auth/domain/usecase/auth/verify_token_usecase.dart';

part 'splash_page_event.dart';
part 'splash_page_state.dart';
part 'splash_page_bloc.freezed.dart';

class SplashPageBloc extends Bloc<SplashPageEvent, SplashPageState> {
  SplashPageBloc(this._verifyTokenUsecase)
      : super(const SplashPageState.initial()) {
    on<SplashPageEvent>(_onLoad);
  }

  final VerifyTokenUsecase _verifyTokenUsecase;

  Future<FutureOr<void>> _onLoad(
    SplashPageEvent event,
    Emitter<SplashPageState> emit,
  ) async {
    try {
      emit(const SplashPageState.loading());

      String token = await SecureStorage().readSecureData('access_token');

      final res = await _verifyTokenUsecase.call(params: token);
      if (res.code != 200) {
        emit(const SplashPageState.invalid());
        return null;
      }
      emit(const SplashPageState.valid());
    } catch (e) {
      emit(const SplashPageState.invalid());
    }
  }
}
