part of 'program_statistics_bloc.dart';

@freezed
class ProgramStatisticsEvent with _$ProgramStatisticsEvent {
  const factory ProgramStatisticsEvent.started({
    required String programId,
  }) = ProgramStatisticsEventStarted;
}
