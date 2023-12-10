import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../core/bases/base_data.dart';

import '../../domain/models/task.dart';
import '../../domain/repositories/task_repository.dart';
import '../mappers/task_mapper.dart';
import '../models/request/task_user_request.dart';
import '../sources/api/task_api_service.dart';

class TaskRepositoryImpl implements TaskRepository {
  TaskRepositoryImpl(this._taskApiService);

  final TaskApiService _taskApiService;

  @override
  Future<DataState<List<Task>>> getTaskByUser(String email, String date) async {
    try {
      final httpResponse = await _taskApiService.getTaskByUser(
        TaskUserRequest(
          params: TaskUserRequestParameters(email: email, date: date),
        ),
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(
          httpResponse.data.task!.tasks!.map((e) => e.taskToEntity()).toList(),
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
}
