import '../../../../core/bases/base_data_response.dart';
import '../../../../core/bases/base_usecase.dart';
import '../../../program/domain/models/program.dart';

import '../repositories/user_repository.dart';

class GetUserProgramUsecase
    implements BaseUseCase<BaseDataResponse<List<Program>>, void> {
  GetUserProgramUsecase(this._userRepository);

  final UserRepository _userRepository;

  @override
  Future<BaseDataResponse<List<Program>>> call({void params}) {
    return _userRepository.getUserProgram();
  }
}
