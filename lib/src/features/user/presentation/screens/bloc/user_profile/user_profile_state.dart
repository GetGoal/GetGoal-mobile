part of 'user_profile_bloc.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = UserProfileStateInitial;
  const factory UserProfileState.loading() = UserProfileStateLoading;
  const factory UserProfileState.loadedSuccess({
    required UserProfileEntity user,
  }) = UserProfileStateLoadedSuccess;
  const factory UserProfileState.error() = UserProfileStateError;
}
