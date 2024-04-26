import '../../../task/data/mappers/task_mapper.dart';
import '../../domain/entities/program.dart';
import '../models/response/program_response.dart';

extension ProgramMapper on ProgramModel {
  Program programToEntity() => Program(
        programId: programId ?? 0,
        programName: programName ?? '',
        programDesc: programDesc ?? '',
        programImage: madiaUrl ?? '',
        expectedTime: expectedTime ?? '',
        updatedAt: updatedAt ?? DateTime.now().toString(),
        labels: labels == null
            ? [const Label(labelName: 'Unknown')]
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
        isSaved: isSaved ?? false,
        owner: ProgramOwner(
          ownerId: owner!.ownerId,
          firstName: owner!.firstName!.isEmpty ? 'Unknown' : owner!.firstName,
          lastName: owner!.lastName!.isEmpty ? '' : owner!.lastName,
          email: owner!.email!.isEmpty ? 'Unknown' : owner!.email,
          imageUrl: owner!.imageUrl!.isEmpty ? 'Unknown' : owner!.imageUrl,
        ),
      );
}
