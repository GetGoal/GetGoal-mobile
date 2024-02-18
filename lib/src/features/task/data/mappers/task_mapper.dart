import 'package:intl/intl.dart';

import '../../domain/models/task.dart';
import '../models/request/create_join_program_task_user_request.dart';
import '../models/request/task_request.dart';
import '../models/response/task_response.dart';

extension ProgramMapper on TaskModel {
  Task taskToEntity() => Task(
        taskId: taskId ?? 0,
        taskName: taskName ?? '',
        taskStatus: taskStatus ?? 1,
        isSetNotification: isSetNotification ?? 0,
        startTime: startTime ?? '',
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

extension TaskToTaskRequest on Task {
  TaskRequest taskToTaskRequest() => TaskRequest(
        taskName: taskName ?? '',
        taskDesc: taskDescription ?? '',
        category: category ?? '',
        isSetNoti: isSetNotification ?? 0,
        startTime: startTime,
        timeBeforeNotify: timeBeforeNotify ?? 0,
      );
}
