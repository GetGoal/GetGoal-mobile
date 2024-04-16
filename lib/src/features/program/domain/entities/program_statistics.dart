import 'package:freezed_annotation/freezed_annotation.dart';

part 'program_statistics.freezed.dart';

@freezed
sealed class ProgramStatistics with _$ProgramStatistics {
  const factory ProgramStatistics({
    final int? programId,
    final int? joined,
    final int? saved,
    final int? viewed,
    final String? lastJoined,
  }) = _ProgramStatistics;
}
