import '../../domain/models/program.dart';
import '../models/response/program_response.dart';

extension ProgramMapper on ProgramModel {
  Program toDomain() => Program(
        programId: programId ?? 0,
        programName: programName ?? '',
        rating: rating ?? 0.0,
        programDesc: programDesc ?? '',
        programImage: madiaUrl ?? '',
        expectedTime: expectedTime ?? '',
        updatedAt: updatedAt ?? '',
        labels: labels!.isEmpty
            ? []
            : labels!
                .map(
                  (e) => Label(
                    labelId: e.labelId ?? 0,
                    labelName: e.labelName ?? '',
                  ),
                )
                .toList(),
      );
}
