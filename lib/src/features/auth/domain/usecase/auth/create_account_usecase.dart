import '../../../../../core/bases/base_data_response.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../entity/create_user.dart';

import '../../repositories/auth_repository.dart';

class CreateAccountUsecase
    implements BaseUseCase<BaseDataResponse, CreateUser> {
  CreateAccountUsecase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<BaseDataResponse> call({required CreateUser params}) {
    return _authRepository.registerAccount(params);
  }
}
