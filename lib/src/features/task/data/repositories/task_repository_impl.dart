import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../core/bases/base_data.dart';

import '../../domain/models/task.dart';
import '../../domain/repositories/task_repository.dart';
import '../mappers/task_mapper.dart';
import '../models/request/create_join_program_task_user_request.dart';
import '../models/request/task_user_request.dart';
import '../sources/api/task_api_service.dart';

class TaskRepositoryImpl implements TaskRepository {
  TaskRepositoryImpl(this._taskApiService);

  final TaskApiService _taskApiService;

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
        return DataFailed(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<List<Task>>> getTaskByProgramId(String programId) async {
    try {
      final httpResponse = await _taskApiService.getTaskByProgramId(programId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(
          httpResponse.data.data!.map((e) => e.taskToEntity()).toList(),
        );
      } else {
        return DataFailed(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (e) {
      log(e.message.toString());
      return DataFailed(e);
    }
  }

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
        return DataFailed(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (e) {
      log(e.message.toString());
      return DataFailed(e);
    }
  }
}
