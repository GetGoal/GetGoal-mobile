import '../../../../core/bases/base_data_response.dart';
import '../../../../core/bases/base_usecase.dart';

import '../entities/user_profile_entity.dart';
import '../repositories/user_repository.dart';

class GetUserProfileUsecase
    implements BaseUseCase<BaseDataResponse<UserProfileEntity>, void> {
  GetUserProfileUsecase(this._userRepository);

  final UserRepository _userRepository;

  @override
  Future<BaseDataResponse<UserProfileEntity>> call({void params}) {
    return _userRepository.getUserProfile();
  }
}
