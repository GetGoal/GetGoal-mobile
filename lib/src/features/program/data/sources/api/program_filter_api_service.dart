import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/bases/base_data_response.dart';
import '../../models/response/program_filter_response.dart';

part 'program_filter_api_service.g.dart';

@RestApi()
abstract class ProgramFilterApiService {
  factory ProgramFilterApiService(Dio dio) = _ProgramFilterApiService;

  @GET('/v1/labels/search')
  Future<HttpResponse<BaseDataResponse<List<Label>>>> getLabels();
}
