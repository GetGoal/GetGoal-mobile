import '../../../../../core/bases/base_data_response.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../entities/program_statistics.dart';
import '../../repositories/program_repository.dart';

class GetProgramStatisticsUsecase
    implements BaseUseCase<BaseDataResponse<ProgramStatistics>, String> {
  GetProgramStatisticsUsecase(this._programRepository);

  final ProgramRepository _programRepository;

  @override
  Future<BaseDataResponse<ProgramStatistics>> call({required String params}) {
    return _programRepository.getProgramStatistics(params);
  }
}
