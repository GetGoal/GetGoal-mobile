part of 'program_edit_bloc.dart';

@freezed
class ProgramEditEvent with _$ProgramEditEvent {
  const factory ProgramEditEvent.started({
    String? programId,
  }) = ProgramEditEventStarted;
  const factory ProgramEditEvent.onEdit({
    required ProgramCreate programData,
    required String programId,
  }) = ProgramEditEventOnEdit;
}
