import '../../../../core/bases/base_data_response.dart';
import '../../../../core/bases/base_usecase.dart';
import '../repositories/user_repository.dart';

class ResetUserPasswordUsecase
    implements BaseUseCase<BaseDataResponse, String> {
  ResetUserPasswordUsecase(this._userRepository);

  final UserRepository _userRepository;

  @override
  Future<BaseDataResponse> call({required String params, String? password}) {
    return _userRepository.resetUserPassword(params, password!);
  }
}
