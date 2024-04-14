import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../../core/bases/base_data_response.dart';

part 'calendar_api_service.g.dart';

@RestApi()
abstract class CalendarApiService {
  factory CalendarApiService(Dio dio) = _CalendarApiService;

  @GET('/v1/users/calendar')
  Future<HttpResponse<BaseDataResponse<List<int>>>> getAvaliableCalendarTask(
    @Query('date') String date,
  );
}
