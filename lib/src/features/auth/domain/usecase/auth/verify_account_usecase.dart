import '../../../../../core/bases/base_data_response.dart';
import '../../../../../core/bases/base_usecase.dart';

import '../../entity/token_entity.dart';
import '../../repositories/auth_repository.dart';

class VerfifyAccountUsecase
    implements BaseUseCase<BaseDataResponse<TokenEntity>, String> {
  VerfifyAccountUsecase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<BaseDataResponse<TokenEntity>> call({required String params}) {
    return _authRepository.verifyAccount(params);
  }
}
