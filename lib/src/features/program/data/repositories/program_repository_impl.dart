import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../core/bases/base_data.dart';
import '../../../../core/bases/base_data_response.dart';
import '../../../../shared/app_cache.dart';
import '../../../task/data/mappers/task_mapper.dart';
import '../../domain/models/program.dart';
import '../../domain/models/program_create.dart';
import '../../domain/repositories/program_repository.dart';
import '../mappers/program_mapper.dart';
import '../models/request/create_program_request.dart';
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
        return DataFailed(BaseDataResponse());
      }
    } on DioException catch (e) {
      return DataFailed(BaseDataResponse());
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
        return DataFailed(BaseDataResponse());
      }
    } on DioException catch (e) {
      log(e.message.toString());
      return DataFailed(BaseDataResponse());
    }
  }

  @override
  Future<DataState<Program>> getProgramById(String programId) async {
    try {
      final httpResponse = await _programApiService.getProgramById(programId);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data.data!.programToEntity());
      } else {
        return DataFailed(BaseDataResponse());
      }
    } on DioException catch (e) {
      return DataFailed(BaseDataResponse());
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
        return DataFailed(BaseDataResponse());
      }
    } on DioException catch (e) {
      return DataFailed(BaseDataResponse());
    }
  }

  @override
  Future<DataState<Program>> createProgram(ProgramCreate program) async {
    try {
      final requestBody = CreateProgramRequest(
        programName: program.programName,
        programDesc: program.programDescription,
        mediaUrl: 'fdskfdsjfk;sjdklfks;l',
        expectedTime: program.expectedTime,
        tasks: AppCache.programTaskCreateList
            .map((e) => e.taskToTaskRequest())
            .toList(),
        labels: program.category!
            .map((e) => LabelRequest(labelName: e.labelName))
            .toList(),
      );

      print(requestBody.programDesc);

      final httpResponse = await _programApiService.createProgram(requestBody);

      if (httpResponse.response.statusCode == HttpStatus.created) {
        return DataSuccess(Program());
      } else {
        return DataFailed(BaseDataResponse());
      }
    } on DioException catch (e) {
      log(e.message.toString());
      return DataFailed(BaseDataResponse());
    }
  }
}
