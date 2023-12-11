part of 'filter_program_bloc.dart';

@freezed
class FilterProgramState with _$FilterProgramState {
  const factory FilterProgramState.initial() = FilterProgramStateInitial;
  const factory FilterProgramState.loading() = FilterProgramStateLoading;
  const factory FilterProgramState.loadedSuccess({
    required List<ProgramFilter> labels,
    @Default(0) int selectedFilter,
  }) = FilterProgramStateLoadedSuccess;
  const factory FilterProgramState.hide() = FilterProgramStateHide;
  const factory FilterProgramState.error() = FilterProgramStateError;
}
