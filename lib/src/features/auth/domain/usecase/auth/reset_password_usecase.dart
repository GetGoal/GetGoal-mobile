import '../../../../../core/bases/base_data_response.dart';
import '../../../../../core/bases/base_usecase.dart';

import '../../repositories/auth_repository.dart';

class ResetPasswordUsecase implements BaseUseCase<BaseDataResponse, String> {
  ResetPasswordUsecase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<BaseDataResponse> call({required String params}) {
    return _authRepository.resetPassword(params);
  }
}
