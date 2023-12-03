part of 'program_bloc.dart';

@freezed
class ProgramEvent with _$ProgramEvent {
  const factory ProgramEvent.started() = ProgramEventStart;
  const factory ProgramEvent.clicked() = ProgramEventClicked;
  const factory ProgramEvent.filterClicked({required String labelName}) =
      ProgramEventFilterClicked;
}
