import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../core/bases/base_data_response.dart';
import '../../../auth/data/models/request/reset_password_request.dart';
import '../../../program/data/mappers/program_mapper.dart';
import '../../../program/domain/entities/program.dart';
import '../../domain/entities/user_profile_entity.dart';
import '../../domain/repositories/user_repository.dart';

import '../models/request/user_label_request.dart';
import '../sources/api/user_api_service.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._userApiService);

  final UserApiService _userApiService;

  @override
  Future<BaseDataResponse<List<Program>>> getUserProgram() async {
    try {
      final res = await _userApiService.getUserPrograms();

      final programList =
          res.data.data!.map((e) => e.programToEntity()).toList();

      final data = BaseDataResponse(
        code: res.data.code,
        message: res.data.message,
        count: res.data.count,
        data: programList,
        error: res.data.error,
      );
      return data;
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
  Future<BaseDataResponse<UserProfileEntity>> getUserProfile() async {
    try {
      final res = await _userApiService.getUserProfile();

      final user = UserProfileEntity(
        userId: res.data.data!.userId,
        email: res.data.data!.email,
        firstName: res.data.data!.firstName,
        lastName: res.data.data!.lastName,
      );

      final data = BaseDataResponse(
        code: res.data.code,
        message: res.data.message,
        count: res.data.count,
        data: user,
        error: res.data.error,
      );
      return data;
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
  Future<BaseDataResponse> resetUserPassword(
    String email,
    String password,
  ) async {
    try {
      final bodyRequest = ResetPasswordRequest(
        email: email,
        password: password,
      );
      final res = await _userApiService.resetPassword(bodyRequest);

      final data = BaseDataResponse(
        code: res.data.code,
        message: res.data.message,
        count: res.data.count,
        data: null,
        error: res.data.error,
      );
      return data;
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
  Future<BaseDataResponse<List<Program>>> getUserSaveProgram() async {
    try {
      final res = await _userApiService.getUserSavePrograms();

      final programList =
          res.data.data!.map((e) => e.programToEntity()).toList();

      final data = BaseDataResponse(
        code: res.data.code,
        message: res.data.message,
        count: res.data.count,
        data: programList,
        error: res.data.error,
      );
      return data;
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
  Future<BaseDataResponse> updateUserLabel(List<String> labels) async {
    try {
      final uesrLabel = UserLabelRequest(labels: labels);

      final res = await _userApiService.updateUserLabel(uesrLabel);

      final data = BaseDataResponse(
        code: res.data.code,
        message: res.data.message,
        count: res.data.count,
        data: null,
        error: res.data.error,
      );

      return data;
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
