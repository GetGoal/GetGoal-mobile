part of 'program_statistics_bloc.dart';

@freezed
class ProgramStatisticsState with _$ProgramStatisticsState {
  const factory ProgramStatisticsState.initial() =
      ProgramStatisticsStateInitial;
  const factory ProgramStatisticsState.loading() =
      ProgramStatisticsStateLoading;
  const factory ProgramStatisticsState.success({
    required ProgramStatistics programStatistics,
  }) = ProgramStatisticsStateSuccess;
  const factory ProgramStatisticsState.failure() =
      ProgramStatisticsStateFailure;
}
