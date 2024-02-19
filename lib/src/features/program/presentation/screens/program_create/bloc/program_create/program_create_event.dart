part of 'program_create_bloc.dart';

@freezed
class CreateProgramEvent with _$CreateProgramEvent {
  const factory CreateProgramEvent.started() = CreateProgramEventStarted;
  const factory CreateProgramEvent.onCreate({
    required ProgramCreate programData,
  }) = CreateProgramEventOnCreated;
}
