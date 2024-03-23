import 'package:google_sign_in/google_sign_in.dart';

import '../../../../../core/bases/base_data_response.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../entity/token_entity.dart';
import '../../repositories/auth_repository.dart';

class GoogleSignInUsecase
    implements BaseUseCase<BaseDataResponse<TokenEntity>, GoogleSignInAccount> {
  GoogleSignInUsecase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<BaseDataResponse<TokenEntity>> call({
    required GoogleSignInAccount params,
  }) {
    return _authRepository.googleSignIn(params);
  }
}
