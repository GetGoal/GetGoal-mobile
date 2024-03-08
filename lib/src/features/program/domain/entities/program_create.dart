import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../task/domain/models/task.dart';
import 'program.dart';

part 'program_create.freezed.dart';

@freezed
sealed class ProgramCreate with _$ProgramCreate {
  const factory ProgramCreate({
    String? imagePath,
    String? programName,
    String? programDescription,
    List<Label>? category,
    String? expectedTime,
    List<Task>? tasks,
  }) = _ProgramCreate;
}
