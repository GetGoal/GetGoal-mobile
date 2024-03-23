import '../../../../../core/bases/base_data.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../entities/program.dart';
import '../../repositories/program_repository.dart';

class GetProgramBySearchUsecase
    implements BaseUseCase<DataState<List<Program>>, String> {
  GetProgramBySearchUsecase(this._programRepository);

  final ProgramRepository _programRepository;

  @override
  Future<DataState<List<Program>>> call({required String params}) {
    return _programRepository.getProramBySearch(params);
  }
}
