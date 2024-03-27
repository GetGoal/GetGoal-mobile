part of 'program_edit_bloc.dart';

@freezed
class ProgramEditState with _$ProgramEditState {
  const factory ProgramEditState.initial({
    Program? program,
  }) = ProgramEditStateInitial;
  const factory ProgramEditState.loading() = ProgramEditStateLoading;
  const factory ProgramEditState.success({
    Program? program,
  }) = ProgramEditStateSuccess;
  const factory ProgramEditState.failure({
    String? message,
  }) = ProgramEditStateFailure;
}
