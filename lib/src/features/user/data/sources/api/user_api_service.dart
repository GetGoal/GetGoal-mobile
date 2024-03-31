import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/bases/base_data_response.dart';
import '../../../../auth/data/models/request/reset_password_request.dart';
import '../../../../program/data/models/response/program_response.dart';
import '../../models/response/user_profile_response.dart';

part 'user_api_service.g.dart';

@RestApi()
abstract class UserApiService {
  factory UserApiService(Dio dio) = _UserApiService;

  @GET('/v1/programs/user')
  Future<HttpResponse<BaseDataResponse<List<ProgramModel>>>> getUserPrograms();

  @GET('/v1/users/profile')
  Future<HttpResponse<BaseDataResponse<UserProfileResponse>>> getUserProfile();

  @POST('/v1/users/reset-password')
  Future<HttpResponse<BaseDataResponse<UserProfileResponse>>> resetPassword(
    @Body() ResetPasswordRequest requestBody,
  );

  @GET('/v1/users/programs/saved')
  Future<HttpResponse<BaseDataResponse<List<ProgramModel>>>> getUserSavePrograms();
}
