part of 'create_account_bloc.dart';

@freezed
class CreateAccountEvent with _$CreateAccountEvent {
  const factory CreateAccountEvent.started() = CreateAccountEventStarted;
  const factory CreateAccountEvent.onCreate({
    required CreateUser user,
  }) = CreateAccountEventOnCreate;
}
