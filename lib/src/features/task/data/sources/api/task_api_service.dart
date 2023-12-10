import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/request/create_join_program_task_user_request.dart';
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

  @GET('/v1/tasks/plan/{id}')
  Future<HttpResponse<TaskResponse>> getTaskByProgramId(
    @Path('id') String programId,
  );

  @POST('/v1/tasks/join-program/{id}')
  Future<HttpResponse<TaskResponse>> joinProgram(
    @Path('id') String programId,
    @Body() JoinProgramRequest requestBody,
  );
}
