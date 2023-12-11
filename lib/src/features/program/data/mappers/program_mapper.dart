import '../../../task/data/mappers/task_mapper.dart';
import '../../domain/models/program.dart';
import '../models/response/program_response.dart';

extension ProgramMapper on ProgramModel {
  Program programToEntity() => Program(
        programId: programId ?? 0,
        programName: programName ?? '',
        rating: rating ?? 0.0,
        programDesc: programDesc ?? '',
        programImage: madiaUrl ?? '',
        expectedTime: expectedTime ?? '',
        updatedAt: updatedAt ?? '',
        labels: labels == null
            ? []
            : labels!
                .map(
                  (e) => Label(
                    labelId: e.labelId ?? 0,
                    labelName: e.labelName ?? '',
                  ),
                )
                .toList(),
        tasks:
            tasks == null ? [] : tasks!.map((e) => e.taskToEntity()).toList(),
      );
}
