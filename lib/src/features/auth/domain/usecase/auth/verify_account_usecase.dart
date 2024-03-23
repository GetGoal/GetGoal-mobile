import '../../../../../core/bases/base_data_response.dart';
import '../../../../../core/bases/base_usecase.dart';

import '../../repositories/auth_repository.dart';

class VerfifyAccountUsecase implements BaseUseCase<BaseDataResponse, String> {
  VerfifyAccountUsecase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<BaseDataResponse> call({required String params}) {
    return _authRepository.verifyAccount(params);
  }
}
