part of 'user_program_bloc.dart';

@freezed
class UserProgramEvent with _$UserProgramEvent {
  const factory UserProgramEvent.started() = UserProgramEventStarted;
}
