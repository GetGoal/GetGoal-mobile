import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../task/domain/entities/task.dart';

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
    final List<Task>? tasks,
    final bool? isSaved,
    final ProgramOwner? owner,
  }) = _Program;
}

@freezed
sealed class Label with _$Label {
  const factory Label({
    final int? labelId,
    final String? labelName,
  }) = _Label;
}

@freezed
sealed class ProgramOwner with _$ProgramOwner {
  const factory ProgramOwner({
    final int? ownerId,
    final String? firstName,
    final String? lastName,
    final String? email,
    final String? imageUrl,
  }) = _ProgramOwner;
}
