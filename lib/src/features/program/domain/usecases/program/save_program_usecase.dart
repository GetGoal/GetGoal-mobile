import '../../../../../core/bases/base_data_response.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../repositories/program_repository.dart';

class SaveProgramUsecase implements BaseUseCase<BaseDataResponse, String> {
  SaveProgramUsecase(this._programRepository);

  final ProgramRepository _programRepository;

  @override
  Future<BaseDataResponse> call({required String params}) {
    return _programRepository.saveProgram(params);
  }
}
