import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../../core/bases/base_data_response.dart';
import '../../models/request/login_request.dart';
import '../../models/request/register_request.dart';
import '../../models/request/verify_request.dart';
import '../../models/response/login_success_response.dart';

part 'auth_api_service.g.dart';

@RestApi()
abstract class AuthApiService {
  factory AuthApiService(Dio dio) = _AuthApiService;

  @POST('/v1/auth/register')
  Future<HttpResponse<BaseDataResponse>> register(
    @Body() RegisterRequest requestBody,
  );

  @POST('/v1/auth/verify')
  Future<HttpResponse<BaseDataResponse>> verify(
    @Body() VerifyRequest requestBody,
  );

  @POST('/v1/auth/sign-in')
  Future<HttpResponse<BaseDataResponse<LoginSuccessResponse>>> login(
    @Body() LoginRequest requestBody,
  );

  @POST('/v1/auth/sign-out')
  Future<HttpResponse<BaseDataResponse>> logout();
}
