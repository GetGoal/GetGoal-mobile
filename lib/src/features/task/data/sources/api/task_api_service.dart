import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/request/task_user_request.dart';
import '../../models/response/task_response.dart';

part 'task_api_service.g.dart';

@RestApi()
abstract class TaskApiService {
  factory TaskApiService(Dio dio) = _TaskApiService;

  @GET('/v1/tasks/to-do')
  Future<HttpResponse<TaskResponse>> getTaskByUser(
    @Body() TaskUserRequest requestBody,
  );
}
