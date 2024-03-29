part of 'new_password_bloc.dart';

@freezed
class NewPasswordState with _$NewPasswordState {
  const factory NewPasswordState.initial() = NewPasswordStateInitial;
  const factory NewPasswordState.loading() = NewPasswordStateLoading;
  const factory NewPasswordState.success() = NewPasswordStateSuccess;
  const factory NewPasswordState.failure({
    String? message,
  }) = NewPasswordStateFailure;
}
