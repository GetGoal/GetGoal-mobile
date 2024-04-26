part of 'program_section_bloc.dart';

@freezed
class ProgramSectionEvent with _$ProgramSectionEvent {
  const factory ProgramSectionEvent.started() = ProgramSectionEventStarted;
  const factory ProgramSectionEvent.onSearch() = ProgramSectionEventOnSearch;
}
