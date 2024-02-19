import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/user_profile_entity.dart';
import '../../../../domain/usecases/get_user_profile_usecase.dart';

part 'user_profile_event.dart';
part 'user_profile_state.dart';
part 'user_profile_bloc.freezed.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  UserProfileBloc(this._getUserProfileUsecase)
      : super(const UserProfileState.initial()) {
    on<UserProfileEventStarted>(_onStarted);
  }

  final GetUserProfileUsecase _getUserProfileUsecase;

  FutureOr<void> _onStarted(
    UserProfileEventStarted event,
    Emitter<UserProfileState> emit,
  ) async {
    try {
      final res = await _getUserProfileUsecase.call();
      if (res.code != 200) {
        emit(const UserProfileState.error());
        return;
      }

      final user = UserProfileEntity(
        userId: res.data!.userId,
        email: res.data!.email,
        firstName: res.data!.firstName,
        lastName: res.data!.lastName,
      );

      emit(UserProfileState.loadedSuccess(user: user));
    } catch (e) {
      emit(const UserProfileState.error());
    }
  }
}
