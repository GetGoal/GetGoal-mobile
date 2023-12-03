part of 'program_bloc.dart';

@freezed
class ProgramState with _$ProgramState {
  const factory ProgramState.initial() = ProgramStateInital;
  const factory ProgramState.loading() = ProgramStateLoading;
  const factory ProgramState.loadedSuccess({
    required List<Program> programs,
  }) = ProgramStateLoadedSuccess;
  const factory ProgramState.programEmpty() = ProgramStateEmpty;
  const factory ProgramState.error() = ProgramStateError;
}
