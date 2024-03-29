part of 'program_bloc.dart';

@freezed
class ProgramEvent with _$ProgramEvent {
  const factory ProgramEvent.started() = ProgramEventStart;
  const factory ProgramEvent.getAllProgram() = ProgramEventGetAllProgram;
  const factory ProgramEvent.clicked() = ProgramEventClicked;
  const factory ProgramEvent.filterClicked({required String labelName}) =
      ProgramEventFilterClicked;
  const factory ProgramEvent.searching() = ProgramEventSearching;
  const factory ProgramEvent.searchProgram({required String text}) =
      ProgramEventSearchProgram;
  const factory ProgramEvent.saveProgram({
    required String programId,
  }) = ProgramEventSaveProgram;
}
