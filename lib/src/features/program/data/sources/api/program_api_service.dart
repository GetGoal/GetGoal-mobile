import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/bases/base_data_response.dart';
import '../../models/response/program_response.dart';

part 'program_api_service.g.dart';

@RestApi()
abstract class ProgramApiService {
  factory ProgramApiService(Dio dio) = _ProgramApiService;

  @GET('/v1/programs')
  Future<HttpResponse<BaseDataResponse<List<ProgramModel>>>> getPrograms();

  @GET('/v1/programs/search/filter')
  Future<HttpResponse<BaseDataResponse<List<ProgramModel>>>>
      getProgramByLabelName(
    @Query('filter') String labelName,
  );

  @GET('/v1/programs/{id}')
  Future<HttpResponse<BaseDataResponse<ProgramModel>>> getProgramById(
    @Path('id') String programId,
  );

  @POST('/v1/programs/search')
  Future<HttpResponse<BaseDataResponse<List<ProgramModel>>>> getProgramBySearch(
    @Query('text') String text,
  );
}
