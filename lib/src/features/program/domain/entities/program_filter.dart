import 'package:freezed_annotation/freezed_annotation.dart';

part 'program_filter.freezed.dart';

@freezed
sealed class ProgramFilter with _$ProgramFilter {
  const factory ProgramFilter.label({
    int? labelId,
    String? labelName,
    String? updatedAt,
    bool? isSelected,
  }) = ProgramFilterLabel;
}
