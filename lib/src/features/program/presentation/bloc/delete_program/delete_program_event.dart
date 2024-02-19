part of 'delete_program_bloc.dart';

@freezed
class DeleteProgramEvent with _$DeleteProgramEvent {
  const factory DeleteProgramEvent.started() = DeleteProgramEventStarted;
  const factory DeleteProgramEvent.onDelete({
    required String programId,
  }) = DeleteProgramEventOnDelete;
}
