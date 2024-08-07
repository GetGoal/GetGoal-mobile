import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as p;

import '../../../../core/bases/base_data.dart';
import '../../../../core/bases/base_data_response.dart';
import '../../../../shared/app_cache.dart';
import '../../../task/data/mappers/task_mapper.dart';
import '../../domain/entities/program.dart';
import '../../domain/entities/program_create.dart';
import '../../domain/entities/program_statistics.dart';
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
    } on DioException {
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
    } on DioException {
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
    } on DioException {
      return DataFailed(BaseDataResponse());
    }
  }

  @override
  Future<BaseDataResponse<Program>> createProgram(ProgramCreate program) async {
    try {
      final path =
          p.basename(program.imagePath!).replaceFirst('image_picker_', '');

      final file = await File(program.imagePath!).create();
      final firebaseStorage = FirebaseStorage.instance;
      final snapshot = await firebaseStorage
          .ref()
          .child('media/program/$path')
          .putFile(file);

      final downloadUrl = await snapshot.ref.getDownloadURL();

      final requestBody = CreateProgramRequest(
        programName: program.programName,
        programDesc: program.programDescription,
        mediaUrl: downloadUrl,
        expectedTime: program.expectedTime,
        tasks: AppCache.programTaskCreateList
            .map((e) => e.taskToTaskRequest())
            .toList(),
        labels: program.category!
            .map((e) => LabelRequest(labelName: e.labelName))
            .toList(),
      );

      final res = await _programApiService.createProgram(requestBody);

      final programRes = res.data.data!.programToEntity();

      final data = BaseDataResponse(
        code: res.data.code,
        message: res.data.message,
        count: res.data.count,
        data: programRes,
        error: res.data.error,
      );

      AppCache.programCreate = const ProgramCreate();
      AppCache.programTaskCreateList = [];

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

  // Delete program
  @override
  Future<BaseDataResponse> deleteProgram(
    String programId,
    String? imageUrl,
  ) async {
    try {
      final firebaseStorage = FirebaseStorage.instance;

      final res = await _programApiService.deleteProgram(programId);
      if (imageUrl != null) {
        bool isUrlValid = Uri.parse(imageUrl).isAbsolute;

        if (isUrlValid) {
          firebaseStorage.refFromURL(imageUrl).delete();
        }
      }

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
  Future<BaseDataResponse<Program>> editProgram(
    ProgramCreate program,
    String programId,
  ) async {
    try {
      final firebaseStorage = FirebaseStorage.instance;

      String downloadUrl = '';

      bool isUrlValid = Uri.parse(program.imagePath!).isAbsolute;
      if (!isUrlValid) {
        final path =
            p.basename(program.imagePath!).replaceFirst('image_picker_', '');

        final file = await File(program.imagePath!).create();
        final snapshot = await firebaseStorage
            .ref()
            .child('media/program/$path')
            .putFile(file);

        downloadUrl = await snapshot.ref.getDownloadURL();
      }

      final requestBody = CreateProgramRequest(
        programName: program.programName,
        programDesc: program.programDescription,
        mediaUrl: !isUrlValid ? downloadUrl : program.imagePath,
        expectedTime: program.expectedTime,
        tasks: AppCache.programTaskCreateList
            .map((e) => e.taskToTaskRequest())
            .toList(),
        labels: program.category!
            .map((e) => LabelRequest(labelName: e.labelName))
            .toList(),
      );

      final res = await _programApiService.editProgramById(
        programId,
        requestBody,
      );

      final programRes = res.data.data!.programToEntity();

      final data = BaseDataResponse(
        code: res.data.code,
        message: res.data.message,
        count: res.data.count,
        data: programRes,
        error: res.data.error,
      );

      AppCache.programCreate = const ProgramCreate();
      AppCache.programTaskCreateList = [];

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
  Future<BaseDataResponse> saveProgram(String programId) async {
    try {
      final res = await _programApiService.saveProgram(programId);

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
  Future<BaseDataResponse<List<Program>>> getRecommendPrograms() async {
    try {
      final res = await _programApiService.getRecommendPrograms();

      final program = res.data.data!.map((e) => e.programToEntity()).toList();

      final data = BaseDataResponse(
        code: res.data.code,
        message: res.data.message,
        count: res.data.count,
        data: program,
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
  Future<BaseDataResponse<ProgramStatistics>> getProgramStatistics(
    String programId,
  ) async {
    try {
      final res = await _programApiService.getProgramStatistics(programId);

      final statistics = ProgramStatistics(
        programId: res.data.data!.programId,
        joined: res.data.data!.joined,
        saved: res.data.data!.saved,
        viewed: res.data.data!.viewed,
        lastJoined: res.data.data!.lastJoined,
      );

      final data = BaseDataResponse(
        code: res.data.code,
        message: res.data.message,
        count: res.data.count,
        data: statistics,
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
