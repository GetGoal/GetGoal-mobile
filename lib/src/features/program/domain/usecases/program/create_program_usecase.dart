import '../../../../../core/bases/base_data.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../models/program.dart';
import '../../models/program_create.dart';
import '../../repositories/program_repository.dart';

class CreateProgramUsecase
    implements BaseUseCase<DataState<Program>, ProgramCreate> {
  CreateProgramUsecase(this._programRepository);

  final ProgramRepository _programRepository;

  @override
  Future<DataState<Program>> call({required ProgramCreate params}) {
    return _programRepository.createProgram(params);
  }
}
