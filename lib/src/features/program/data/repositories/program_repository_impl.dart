import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../core/bases/base_data.dart';
import '../../domain/models/program.dart';
import '../../domain/repositories/program_repository.dart';
import '../mappers/program_mapper.dart';
import '../models/request/filter_program_request.dart';
import '../models/request/search_program_request.dart';
import '../sources/api/program_api_service.dart';

class ProgramRepositoryImpl implements ProgramRepository {
  ProgramRepositoryImpl(this._programApiService);

  final ProgramApiService _programApiService;

  @override
  Future<DataState<List<Program>>> getPrograms() async {
    try {
      final httpResponse = await _programApiService.getPrograms();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(
          httpResponse.data.data!
              .map(
                (e) => e.programToEntity(),
              )
              .toList(),
        );
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

  @override
  Future<DataState<List<Program>>> getProgramByLabelName(
    List<String> labelName,
  ) async {
    try {
      final httpResponse = await _programApiService.getProgramByLabelName(
        FilterProgramRequest(listOfLabelName: labelName),
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(
          httpResponse.data.data!
              .map(
                (e) => e.programToEntity(),
              )
              .toList(),
        );
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
      log(e.message.toString());
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<Program>> getProgramById(String programId) async {
    try {
      final httpResponse = await _programApiService.getProgramById(programId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.data!.programToEntity());
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

  @override
  Future<DataState<List<Program>>> getProramBySearch(String text) async {
    try {
      final httpResponse = await _programApiService.getProgramBySearch(
        SearchProgramRequest(searchText: text),
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        if (httpResponse.data.data == null) {
          return const DataSuccess([]);
        }
        return DataSuccess(
          httpResponse.data.data!
              .map(
                (e) => e.programToEntity(),
              )
              .toList(),
        );
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
