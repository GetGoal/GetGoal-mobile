import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/bases/base_data_response.dart';
import '../../models/request/create_join_program_task_user_request.dart';
import '../../models/request/task_request.dart';
import '../../models/request/task_user_request.dart';
import '../../models/response/task_response.dart';

part 'task_api_service.g.dart';

@RestApi()
abstract class TaskApiService {
  factory TaskApiService(Dio dio) = _TaskApiService;

  @GET('/v1/tasks/to-do')
  Future<HttpResponse<BaseDataResponse<List<TaskModel>>>> getTaskByUser(
    @Body() TaskUserRequestParameters requestBody,
  );

  @GET('/v1/tasks/plan/{id}')
  Future<HttpResponse<BaseDataResponse<List<TaskModel>>>> getTaskByProgramId(
    @Path('id') String programId,
  );

  @GET('/v1/tasks')
  Future<HttpResponse<BaseDataResponse<List<TaskModel>>>> createTask(
    @Body() TaskRequest task,
  );

  @POST('/v1/tasks/join-program/{id}')
  Future<HttpResponse<BaseDataResponse<List<TaskModel>>>> joinProgram(
    @Path('id') String programId,
    @Body() JoinProgramRequest requestBody,
  );

  @PUT('/v1/tasks/done/{id}')
  Future<HttpResponse<BaseDataResponse<TaskModel>>> changeTaskStatusToDone(
    @Path('id') String taskId,
  );

  @PUT('/v1/tasks/un-done/{id}')
  Future<HttpResponse<BaseDataResponse<TaskModel>>> changeTaskStatusToNotDone(
    @Path('id') String taskId,
  );

  @DELETE('/v1/tasks/{id}')
  Future<HttpResponse<BaseDataResponse<TaskModel>>> deleteTask(
    @Path('id') String taskId,
  );
}
