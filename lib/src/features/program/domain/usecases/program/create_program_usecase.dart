import '../../../../../core/bases/base_data_response.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../entities/program.dart';
import '../../entities/program_create.dart';
import '../../repositories/program_repository.dart';

class CreateProgramUsecase
    implements BaseUseCase<BaseDataResponse<Program>, ProgramCreate> {
  CreateProgramUsecase(this._programRepository);

  final ProgramRepository _programRepository;

  @override
  Future<BaseDataResponse<Program>> call({required ProgramCreate params}) {
    return _programRepository.createProgram(params);
  }
}
