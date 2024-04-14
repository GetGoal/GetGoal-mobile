import '../../../../core/bases/base_data_response.dart';
import '../../../../core/bases/base_usecase.dart';
import '../repositories/calendar_repository.dart';

class GetAvaliableCalendarTaskUsecase
    implements BaseUseCase<BaseDataResponse, DateTime> {
  GetAvaliableCalendarTaskUsecase(this._calendarRepository);

  final CalendarRepository _calendarRepository;

  @override
  Future<BaseDataResponse<List<int>>> call({required DateTime params}) {
    return _calendarRepository.getAvaliableCalendarTask(params);
  }
}
