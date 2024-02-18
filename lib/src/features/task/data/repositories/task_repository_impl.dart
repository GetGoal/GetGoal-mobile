import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../core/bases/base_data.dart';

import '../../../../core/bases/base_data_response.dart';
import '../../domain/models/task.dart';
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
        taskName: task.taskName,
        taskDesc: task.taskDescription,
        isSetNoti: task.isSetNotification,
        startTime: task.startTime,
        category: task.category,
        timeBeforeNotify: task.timeBeforeNotify,
      );

      print(requestBody.toJson());

      final httpResponse = await _taskApiService.createTask(requestBody);

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
