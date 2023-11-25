import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/response/program_filter_response.dart';

part 'program_filter_api_service.g.dart';

@RestApi()
abstract class ProgramFilterApiService {
  factory ProgramFilterApiService(Dio dio) = _ProgramFilterApiService;

  @GET('/v1/labels/search')
  Future<HttpResponse<ProgramFilterResponse>> getLabels();
}
