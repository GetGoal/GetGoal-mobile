part of 'forget_password_bloc.dart';

@freezed
class ForgetPasswordEvent with _$ForgetPasswordEvent {
  const factory ForgetPasswordEvent.started() = ForgetPasswordEventStarted;
  const factory ForgetPasswordEvent.onSubmited({
    required String email,
  }) = ForgetPasswordEventOnSubmited;
}
