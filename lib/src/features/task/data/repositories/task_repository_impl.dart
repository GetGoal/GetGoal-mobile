import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

import '../../../../config/notification/notification_service.dart';
import '../../../../core/bases/base_data.dart';

import '../../../../core/bases/base_data_response.dart';
import '../../domain/entities/task.dart';
import '../../domain/repositories/task_repository.dart';
import '../mappers/task_mapper.dart';
import '../models/request/create_join_program_task_user_request.dart';
import '../models/request/task_request.dart';
import '../models/request/task_user_request.dart';
import '../sources/api/task_api_service.dart';

class TaskRepositoryImpl implements TaskRepository {
  TaskRepositoryImpl(this._taskApiService);

  final TaskApiService _taskApiService;

  // Get all To-do list from user by date
  @override
  Future<DataState<List<Task>>> getTaskByUser(String email, String date) async {
    try {
      final httpResponse = await _taskApiService.getTaskByUser(
        TaskUserRequestParameters(email: email, date: date),
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        if (httpResponse.data.data == null) return const DataSuccess([]);
        return DataSuccess(
          httpResponse.data.data!.map((e) => e.taskToEntity()).toList(),
        );
      } else {
        return DataFailed(BaseDataResponse());
      }
    } on DioException catch (e) {
      log(e.message.toString());
      return DataFailed(BaseDataResponse());
    }
  }

  // Get all program's tasks by program id
  @override
  Future<DataState<List<Task>>> getTaskByProgramId(String programId) async {
    try {
      final httpResponse = await _taskApiService.getTaskByProgramId(programId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(
          httpResponse.data.data!.map((e) => e.taskToEntity()).toList(),
        );
      } else {
        return DataFailed(BaseDataResponse());
      }
    } on DioException catch (e) {
      log(e.message.toString());
      return DataFailed(BaseDataResponse());
    }
  }

  // Joining program
  @override
  Future<DataState<List<Task>>> joinProgram(
    List<Task> tasks,
    String email,
    String programId,
  ) async {
    try {
      final JoinProgramRequest requestBody = JoinProgramRequest(
        email: email,
        taskList: tasks.map((e) => e.taskToJoinProgramTaskRequest()).toList(),
      );

      final httpResponse =
          await _taskApiService.joinProgram(programId, requestBody);

      for (var i = 0; i < httpResponse.data.data!.length; i++) {
        if (httpResponse.data.data![i].isSetNotification != 0) {
          final originalDateString = httpResponse.data.data![i].startTime!;
          final formattedDate = DateFormat(
            'yyyy-MM-dd HH:mm:ss.SSSSSS',
          ).format(DateTime.parse(originalDateString));

          NotificationService().scheduleNotification(
            id: httpResponse.data.data![i].taskId,
            title: httpResponse.data.data![i].taskName,
            body:
                'This task will start in ${httpResponse.data.data![i].timeBeforeNotify} minutes.',
            scheduledTime: DateTime.parse(formattedDate).subtract(
              Duration(
                minutes: httpResponse.data.data![i].timeBeforeNotify!,
              ),
            ),
          );
        }
      }

      if (httpResponse.response.statusCode == HttpStatus.created) {
        if (httpResponse.data.data == null) return const DataSuccess([]);

        return DataSuccess(
          httpResponse.data.data!.map((e) => e.taskToEntity()).toList(),
        );
      } else {
        return DataFailed(BaseDataResponse());
      }
    } on DioException catch (e) {
      log(e.message.toString());
      return DataFailed(BaseDataResponse());
    }
  }

  // Changing task status to done
  @override
  Future<DataState<Task>> changeTaskStatusToDone(String taskId) async {
    try {
      final httpResponse = await _taskApiService.changeTaskStatusToDone(taskId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(
          httpResponse.data.data!.taskToEntity(),
        );
      } else {
        return DataFailed(BaseDataResponse());
      }
    } on DioException catch (e) {
      log(e.message.toString());
      return DataFailed(BaseDataResponse());
    }
  }

  // Changing task status to not done
  @override
  Future<DataState<Task>> changeTaskStatustoNotDone(String taskId) async {
    try {
      final httpResponse =
          await _taskApiService.changeTaskStatusToNotDone(taskId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(
          httpResponse.data.data!.taskToEntity(),
        );
      } else {
        return DataFailed(BaseDataResponse());
      }
    } on DioException catch (e) {
      log(e.message.toString());
      return DataFailed(BaseDataResponse());
    }
  }

  // Creating a task
  @override
  Future<DataState<Task>> createTask(Task task) async {
    try {
      final TaskRequest requestBody = TaskRequest(
        taskId: 0,
        taskName: task.taskName,
        taskDesc: task.taskDescription,
        isSetNoti: task.isSetNotification,
        startTime: task.startTime,
        category: task.category,
        timeBeforeNotify: task.timeBeforeNotify,
      );

      final httpResponse = await _taskApiService.createTask(requestBody);

      final originalDateString = task.startTime!;
      final formattedDate = DateFormat(
        'yyyy-MM-dd HH:mm:ss.SSSSSS',
      ).format(DateTime.parse(originalDateString));

      if (task.isSetNotification != 0) {
        NotificationService().scheduleNotification(
          id: httpResponse.data.data!.taskId,
          title: task.taskName,
          body: 'This task will start in ${task.timeBeforeNotify} minutes.',
          scheduledTime: DateTime.parse(formattedDate)
              .subtract(Duration(minutes: task.timeBeforeNotify!)),
        );
      }

      if (httpResponse.response.statusCode == HttpStatus.created) {
        return const DataSuccess(Task());
      } else {
        return DataFailed(BaseDataResponse());
      }
    } on DioException catch (e) {
      log(e.message.toString());
      return DataFailed(BaseDataResponse());
    }
  }

  // Deleting a task
  @override
  Future<DataState<Task>> deleteTask(String taskId) async {
    try {
      final httpResponse = await _taskApiService.deleteTask(taskId);

      await NotificationService().cancelScheduleNotification(int.parse(taskId));

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(
          httpResponse.data.data!.taskToEntity(),
        );
      } else {
        return DataFailed(BaseDataResponse());
      }
    } on DioException catch (e) {
      log(e.message.toString());
      return DataFailed(BaseDataResponse());
    }
  }

  // Get task by task id
  @override
  Future<DataState<Task>> getTaskById(String taskId) async {
    try {
      final httpResponse = await _taskApiService.getTaskById(taskId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(
          httpResponse.data.data!.taskToEntity(),
        );
      } else {
        return DataFailed(BaseDataResponse());
      }
    } on DioException catch (e) {
      log(e.message.toString());
      return DataFailed(BaseDataResponse());
    }
  }

  @override
  Future<DataState<Task>> editTask(Task task, String taskId) async {
    try {
      final httpResponse = await _taskApiService.updateTask(
        taskId,
        task.taskToTaskRequest(),
      );

      if (task.isSetNotification != 0) {
        await NotificationService().cancelScheduleNotification(
          httpResponse.data.data!.taskId!,
        );

        final originalDateString = httpResponse.data.data!.startTime!;
        final formattedDate = DateFormat(
          'yyyy-MM-dd HH:mm:ss.SSSSSS',
        ).format(DateTime.parse(originalDateString));

        NotificationService().scheduleNotification(
          id: httpResponse.data.data!.taskId,
          title: httpResponse.data.data!.taskName,
          body: 'This task will start in ${task.timeBeforeNotify} minutes.',
          scheduledTime: DateTime.parse(formattedDate).subtract(
            Duration(minutes: httpResponse.data.data!.timeBeforeNotify!),
          ),
        );
      }

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(
          httpResponse.data.data!.taskToEntity(),
        );
      } else {
        return DataFailed(BaseDataResponse());
      }
    } on DioException catch (e) {
      log(e.message.toString());
      return DataFailed(BaseDataResponse());
    }
  }
}
