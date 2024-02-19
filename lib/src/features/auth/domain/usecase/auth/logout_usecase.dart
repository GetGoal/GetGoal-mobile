import '../../../../../core/bases/base_data.dart';
import '../../../../../core/bases/base_data_response.dart';
import '../../../../../core/bases/base_usecase.dart';

import '../../entity/login_entity.dart';
import '../../entity/token_entity.dart';
import '../../repositories/auth_repository.dart';

class LogoutUsecase implements BaseUseCase<BaseDataResponse, void> {
  LogoutUsecase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<BaseDataResponse> call({void params}) {
    return _authRepository.logout();
  }
}
