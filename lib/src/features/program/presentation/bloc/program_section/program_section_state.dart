part of 'program_section_bloc.dart';

@freezed
class ProgramSectionState with _$ProgramSectionState {
  const factory ProgramSectionState.initial() = ProgramSectionStateInitial;
  const factory ProgramSectionState.loading() = ProgramSectionStateLoading;
  const factory ProgramSectionState.success() = ProgramSectionStateSuccess;
  const factory ProgramSectionState.hide() = ProgramSectionStateHide;
  const factory ProgramSectionState.failure() = ProgramSectionStateFailure;
}
