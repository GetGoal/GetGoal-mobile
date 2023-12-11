import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/response/program_response.dart';

part 'program_api_service.g.dart';

@RestApi()
abstract class ProgramApiService {
  factory ProgramApiService(Dio dio) = _ProgramApiService;

  @GET('/v1/programs')
  Future<HttpResponse<ProgramResponse>> getPrograms();

  @GET('/v1/programs/search/filter')
  Future<HttpResponse<ProgramResponse>> getProgramByLabelName(
    @Query('filter') String labelName,
  );

  @GET('/v1/programs/{id}')
  Future<HttpResponse<ProgramResponse2>> getProgramById(
    @Path('id') String programId,
  );

  @GET('/v1/programs/search')
  Future<HttpResponse<ProgramResponse>> getProgramBySearch(
    @Query('text') String text,
  );
}
