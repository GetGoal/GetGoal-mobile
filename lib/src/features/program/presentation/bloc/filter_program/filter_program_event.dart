part of 'filter_program_bloc.dart';

@freezed
class FilterProgramEvent with _$FilterProgramEvent {
  const factory FilterProgramEvent.started() = FilterProgramStarted;
  const factory FilterProgramEvent.clicked({
    required List<ProgramFilter> labels,
    required int selectedFilter,
  }) = FilterProgramClicked;
  const factory FilterProgramEvent.hided() = FilterProgramHided;
}
