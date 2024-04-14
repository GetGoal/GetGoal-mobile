import '../../../../core/bases/base_data_response.dart';

abstract class CalendarRepository {
  Future<BaseDataResponse<List<int>>> getAvaliableCalendarTask(DateTime date);
}
