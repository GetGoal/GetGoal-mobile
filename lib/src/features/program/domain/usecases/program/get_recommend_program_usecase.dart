import '../../../../../core/bases/base_data_response.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../entities/program.dart';
import '../../repositories/program_repository.dart';

class GetRecommendProgramUsecase
    implements BaseUseCase<BaseDataResponse<List<Program>>, void> {
  GetRecommendProgramUsecase(this._programRepository);

  final ProgramRepository _programRepository;

  @override
  Future<BaseDataResponse<List<Program>>> call({void params}) {
    return _programRepository.getRecommendPrograms();
  }
}
