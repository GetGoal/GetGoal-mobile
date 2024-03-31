import '../../../../core/bases/base_data_response.dart';
import '../../../../core/bases/base_usecase.dart';
import '../repositories/user_repository.dart';

class UpdateUserLabelUsecase
    implements BaseUseCase<BaseDataResponse, List<String>> {
  UpdateUserLabelUsecase(this._userRepository);

  final UserRepository _userRepository;

  @override
  Future<BaseDataResponse> call({required List<String> params}) {
    return _userRepository.updateUserLabel(params);
  }
}
