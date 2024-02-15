import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../core/bases/base_data.dart';
import '../../domain/models/program_filter.dart';
import '../../domain/repositories/program_filter_repository.dart';
import '../mappers/program_filter_mapper.dart';
import '../sources/api/program_filter_api_service.dart';

class ProgramFilterRepositoryImpl implements ProgramFilterRepository {
  ProgramFilterRepositoryImpl(this._programFilterApiService);

  final ProgramFilterApiService _programFilterApiService;

  @override
  Future<DataState<List<ProgramFilter>>> getProgramFilters() async {
    try {
      final httpResponse = await _programFilterApiService.getLabels();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        if (httpResponse.data.data != null) {
          return DataSuccess(
            httpResponse.data.data!.map((e) => e.toDomain()).toList(),
          );
        }
        return const DataSuccess([]);
      } else {
        return DataFailed(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
