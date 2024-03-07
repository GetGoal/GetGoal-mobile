import '../../../../../core/bases/base_data_response.dart';
import '../../../../../core/bases/base_usecase.dart';

import '../../entity/login_entity.dart';
import '../../entity/token_entity.dart';
import '../../repositories/auth_repository.dart';

class LoginUsecase
    implements BaseUseCase<BaseDataResponse<TokenEntity>, LoginEntity> {
  LoginUsecase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<BaseDataResponse<TokenEntity>> call({
    required LoginEntity params,
  }) {
    return _authRepository.login(params);
  }
}
