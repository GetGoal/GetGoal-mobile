part of 'program_info_bloc.dart';

@freezed
class ProgramInfoState with _$ProgramInfoState {
  const factory ProgramInfoState.initial() = ProgramInfoStateInitial;
  const factory ProgramInfoState.loading() = ProgramInfoStateLoading;
  const factory ProgramInfoState.loadedSuccess({
    required Program? program,
  }) = ProgramInfoStateLoadedSuccess;
  const factory ProgramInfoState.error() = ProgramInfoStateError;
}
