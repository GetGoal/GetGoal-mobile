import '../../../../../core/bases/base_data_response.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../repositories/program_repository.dart';

class DeleteProgramUsecase implements BaseUseCase<BaseDataResponse, String> {
  DeleteProgramUsecase(this._programRepository);

  final ProgramRepository _programRepository;

  @override
  Future<BaseDataResponse> call({required String params}) {
    return _programRepository.deleteProgram(params);
  }
}
