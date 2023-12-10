import 'package:intl/intl.dart';

import '../../domain/models/task.dart';
import '../models/request/create_join_program_task_user_request.dart';
import '../models/response/task_response.dart';

extension ProgramMapper on TaskModel {
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

extension TaskToJoinProgramTaskRequest on Task {
  JoinProramTaskReqeust taskToJoinProgramTaskRequest() => JoinProramTaskReqeust(
        isSetNotification: isSetNotification ?? 0,
        startTime: startTime != null
            ? DateFormat('yyyy-MM-dd hh:mm:ss')
                .format(DateTime.parse(startTime!))
            : DateFormat('yyyy-MM-dd hh:mm:ss').format(DateTime.now()),
        timeBeforeNotify: timeBeforeNotify ?? 0,
      );
}
