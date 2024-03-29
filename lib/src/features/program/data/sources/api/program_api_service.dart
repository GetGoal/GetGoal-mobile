import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/bases/base_data_response.dart';
import '../../models/request/create_program_request.dart';
import '../../models/request/filter_program_request.dart';
import '../../models/request/search_program_request.dart';
import '../../models/response/program_response.dart';

part 'program_api_service.g.dart';

@RestApi()
abstract class ProgramApiService {
  factory ProgramApiService(Dio dio) = _ProgramApiService;

  @GET('/v1/programs')
  Future<HttpResponse<BaseDataResponse<List<ProgramModel>>>> getPrograms();

  @POST('/v1/programs/filter')
  Future<HttpResponse<BaseDataResponse<List<ProgramModel>>>>
      getProgramByLabelName(
    @Body() FilterProgramRequest requestBody,
  );

  @GET('/v1/programs/{id}')
  Future<HttpResponse<BaseDataResponse<ProgramModel>>> getProgramById(
    @Path('id') String programId,
  );

  @PUT('/v1/programs/{id}')
  Future<HttpResponse<BaseDataResponse<ProgramModel>>> editProgramById(
    @Path('id') String programId,
    @Body() CreateProgramRequest requestBody,
  );

  @POST('/v1/programs/search')
  Future<HttpResponse<BaseDataResponse<List<ProgramModel>>>> getProgramBySearch(
    @Body() SearchProgramRequest requestBody,
  );

  @POST('/v1/programs')
  Future<HttpResponse<BaseDataResponse<ProgramModel>>> createProgram(
    @Body() CreateProgramRequest requestBody,
  );

  @POST('/v1/programs/save-program/{id}')
  Future<HttpResponse<BaseDataResponse<ProgramModel>>> saveProgram(
    @Path('id') String programId,
  );

  @DELETE('/v1/programs/{id}')
  Future<HttpResponse<BaseDataResponse>> deleteProgram(
    @Path('id') String programId,
  );
}
