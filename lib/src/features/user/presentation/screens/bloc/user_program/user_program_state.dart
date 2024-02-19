part of 'user_program_bloc.dart';

@freezed
class UserProgramState with _$UserProgramState {
  const factory UserProgramState.initial() = UserProgramStateInitial;
  const factory UserProgramState.loading() = UserProgramStateLoading;
  const factory UserProgramState.loadedSuccess({
    required List<Program> programList,
  }) = UserProgramStateLoadedSuccess;
  const factory UserProgramState.error() = UserProgramStateError;
}
