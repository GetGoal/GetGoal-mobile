part of 'program_info_bloc.dart';

@freezed
class ProgramInfoEvent with _$ProgramInfoEvent {
  const factory ProgramInfoEvent.started({
    required String? programId,
  }) = ProgramInfoEventStarted;
}
