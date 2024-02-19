import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../core/bases/base_data_response.dart';
import '../../../program/data/mappers/program_mapper.dart';
import '../../../program/domain/models/program.dart';

import '../../domain/repositories/user_repository.dart';

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
}
