import '../../../../../core/bases/base_data.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../entities/program.dart';
import '../../repositories/program_repository.dart';

class GetProgramByIdUsecase implements BaseUseCase<DataState<Program>, String> {
  GetProgramByIdUsecase(this._programRepository);

  final ProgramRepository _programRepository;

  @override
  Future<DataState<Program>> call({required String params}) {
    return _programRepository.getProgramById(params);
  }
}
