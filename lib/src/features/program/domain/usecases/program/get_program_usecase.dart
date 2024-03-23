import '../../../../../core/bases/base_data.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../entities/program.dart';
import '../../repositories/program_repository.dart';

class GetProgramUsecase implements BaseUseCase<DataState<List<Program>>, void> {
  GetProgramUsecase(this._programRepository);

  final ProgramRepository _programRepository;

  @override
  Future<DataState<List<Program>>> call({void params}) {
    return _programRepository.getPrograms();
  }
}
