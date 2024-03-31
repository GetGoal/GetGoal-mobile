import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../core/bases/base_data_response.dart';
import '../../../../shared/app_cache.dart';
import '../../../program/data/mappers/program_filter_mapper.dart';
import '../../../program/domain/entities/program_filter.dart';
import '../../domain/entity/create_user.dart';
import '../../domain/entity/login_entity.dart';
import '../../domain/entity/token_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../models/request/email_request.dart';
import '../models/request/google_sign_in_request.dart';
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
        labels: [],
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
  Future<BaseDataResponse<TokenEntity>> verifyAccount(String code) async {
    try {
      final requestBody = VerifyRequest(
        code: code,
        email: AppCache.userEmail,
      );

      final res = await _authApiService.verify(requestBody);

      final token = TokenEntity(
        accessToken: res.data.data!.accessToken,
        refreshToken: res.data.data!.refreshToken,
      );

      final data = BaseDataResponse(
        code: res.data.code,
        message: res.data.message,
        count: res.data.count,
        data: token,
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

  @override
  Future<BaseDataResponse<TokenEntity>> googleSignIn(
    String? provider,
    GoogleSignInAccount? account,
  ) async {
    try {
      final req = GoogleSingInRequest(
        provider: provider,
        google: GoogleSignInModel(
          displayName: account!.displayName,
          email: account.email,
          id: account.id,
          photoUrl: account.photoUrl,
          serverAuthCode: account.serverAuthCode,
        ),
      );

      final res = await _authApiService.googleSignIn(req);

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
  Future<BaseDataResponse> resetPassword(String email) async {
    try {
      final userEmail = EmailRequest(email: email);
      final res = await _authApiService.resetPassword(userEmail);

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

  @override
  Future<BaseDataResponse> verifyPasswordReset(String code) async {
    try {
      final requestBody = VerifyRequest(
        code: code,
        email: AppCache.userEmail,
      );

      final res = await _authApiService.verifyPasswordReset(requestBody);

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
  Future<BaseDataResponse> verifyToken(String token) async {
    try {
      final res = await _authApiService.verifyToken(token);

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

  @override
  Future<BaseDataResponse<List<ProgramFilter>>> getCategoryPreferences() async {
    try {
      final res = await _authApiService.getCategoryPreferences();

      final labelList = res.data.data!
          .map(
            (e) => e.toDomain(),
          )
          .toList();

      return BaseDataResponse(
        code: res.data.code,
        count: res.data.count,
        message: res.data.message,
        data: labelList,
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
