import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../core/bases/base_data_response.dart';
import '../../../../shared/app_cache.dart';
import '../../domain/entity/create_user.dart';
import '../../domain/entity/login_entity.dart';
import '../../domain/entity/token_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../models/request/login_request.dart';
import '../models/request/register_request.dart';
import '../models/request/verify_request.dart';
import '../sources/api/auth_api_service.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._authApiService);

  final AuthApiService _authApiService;

  @override
  Future<BaseDataResponse> registerAccount(
    CreateUser userData,
  ) async {
    try {
      final user = RegisterRequest(
        firstName: userData.firstName,
        lastName: userData.lastName,
        email: userData.email,
        password: userData.password,
      );
      final res = await _authApiService.register(user);

      final data = BaseDataResponse(
        code: res.data.code,
        message: res.data.message,
        count: res.data.count,
        data: res.data.data,
        error: res.data.error,
      );
      return data;
    } on DioException catch (e) {
      final data = jsonDecode(e.response.toString());

      return BaseDataResponse(
        code: data['code'],
        message: data['message'],
        count: data['count'],
        data: data['data'],
        error: data['error'],
      );
    }
  }

  @override
  Future<BaseDataResponse> verifyAccount(String code) async {
    try {
      final requestBody = VerifyRequest(
        code: code,
        email: AppCache.userEmail,
      );

      final res = await _authApiService.verify(requestBody);
      final data = BaseDataResponse(
        code: res.data.code,
        message: res.data.message,
        count: res.data.count,
        data: res.data.data,
        error: res.data.error,
      );
      return data;
    } on DioException catch (e) {
      final data = jsonDecode(e.response.toString());

      return BaseDataResponse(
        code: data['code'],
        message: data['message'],
        count: data['count'],
        data: data['data'],
        error: data['error'],
      );
    }
  }

  @override
  Future<BaseDataResponse<TokenEntity>> login(
    LoginEntity loginData,
  ) async {
    try {
      final requestBody = LoginRequest(
        email: loginData.email,
        password: loginData.password,
      );

      final res = await _authApiService.login(requestBody);

      final token = TokenEntity(
        accessToken: res.data.data!.accessToken,
        refreshToken: res.data.data!.refreshToken,
      );

      return BaseDataResponse(
        code: res.data.code,
        count: res.data.count,
        message: res.data.message,
        data: token,
        error: res.data.error,
      );
    } on DioException catch (e) {
      final data = jsonDecode(e.response.toString());

      return BaseDataResponse(
        code: data['code'],
        message: data['message'],
        count: data['count'],
        data: data['data'],
        error: data['error'],
      );
    }
  }

  @override
  Future<BaseDataResponse> logout() async {
    try {
      final res = await _authApiService.logout();

      return BaseDataResponse(
        code: res.data.code,
        count: res.data.count,
        message: res.data.message,
        data: null,
        error: res.data.error,
      );
    } on DioException catch (e) {
      final data = jsonDecode(e.response.toString());

      return BaseDataResponse(
        code: data['code'],
        message: data['message'],
        count: data['count'],
        data: null,
        error: data['error'],
      );
    }
  }
}
