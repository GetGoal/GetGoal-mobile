import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/bases/base_data_response.dart';
import '../../../../program/data/models/response/program_response.dart';

part 'user_api_service.g.dart';

@RestApi()
abstract class UserApiService {
  factory UserApiService(Dio dio) = _UserApiService;

  @GET('/v1/programs')
  Future<HttpResponse<BaseDataResponse<List<ProgramModel>>>> getUserPrograms();
}
