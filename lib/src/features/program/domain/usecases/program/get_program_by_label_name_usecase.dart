import '../../../../../core/bases/base_data.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../models/program.dart';
import '../../repositories/program_repository.dart';

class GetProgramByLabelNameUsecase
    implements BaseUseCase<DataState<List<Program>>, String> {
  GetProgramByLabelNameUsecase(this._programRepository);

  final ProgramRepository _programRepository;

  @override
  Future<DataState<List<Program>>> call({required String params}) {
    return _programRepository.getProgramByLabelName(params);
  }
}
