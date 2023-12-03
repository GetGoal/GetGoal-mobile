import 'package:freezed_annotation/freezed_annotation.dart';

part 'program.freezed.dart';

@freezed
sealed class Program with _$Program {
  const factory Program({
    final int? programId,
    final String? programName,
    final double? rating,
    final String? programImage,
    final String? programDesc,
    final String? expectedTime,
    final String? updatedAt,
    final List<Label>? labels,
  }) = _Program;
}

@freezed
sealed class Label with _$Label {
  const factory Label({
    final int? labelId,
    final String? labelName,
  }) = _Label;
}
