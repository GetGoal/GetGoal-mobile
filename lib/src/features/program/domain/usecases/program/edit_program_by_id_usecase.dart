import '../../../../../core/bases/base_data_response.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../entities/program.dart';
import '../../entities/program_create.dart';
import '../../repositories/program_repository.dart';

class EditProgramByIdUsecase
    implements BaseUseCase<BaseDataResponse<Program>, ProgramCreate> {
  EditProgramByIdUsecase(this._programRepository);

  final ProgramRepository _programRepository;

  @override
  Future<BaseDataResponse<Program>> call({
    required ProgramCreate params,
    String? programId,
  }) {
    return _programRepository.editProgram(params, programId!);
  }
}
