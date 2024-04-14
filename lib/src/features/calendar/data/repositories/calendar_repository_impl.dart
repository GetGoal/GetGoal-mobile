import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../core/bases/base_data_response.dart';
import '../../../../shared/utils/date_format.dart';
import '../../domain/repositories/calendar_repository.dart';
import '../sources/api/calendar_api_service.dart';

class CalendarRepositoryImpl implements CalendarRepository {
  CalendarRepositoryImpl(
    this._calendarApiService,
  );

  final CalendarApiService _calendarApiService;

  @override
  Future<BaseDataResponse<List<int>>> getAvaliableCalendarTask(
    DateTime date,
  ) async {
    try {
      final formatedDate = formatForRequest(date);

      final res = await _calendarApiService.getAvaliableCalendarTask(
        formatedDate,
      );

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
}
