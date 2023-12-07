import '../../domain/models/task.dart';
import '../sources/api/task_response.dart';

extension ProgramMapper on TaskResponse {
  Task taskToEntity() => Task(
        taskId: taskId ?? 0,
        taskName: taskName ?? '',
        taskStatus: taskStatus ?? 0,
        userAccountId: userAccountId ?? 0,
        isSetNotification: isSetNotification ?? 0,
        startTime: startTime ?? '',
        endTime: endTime ?? '',
        programId: programId ?? 0,
        category: category ?? '',
        timeBeforeNotify: timeBeforeNotify ?? 0,
        taskDescription: taskDescription ?? '',
        link: link ?? '',
        mediaUrl: mediaUrl ?? '',
      );
}
