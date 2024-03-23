import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../../core/bases/base_data_response.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../entity/token_entity.dart';
import '../../repositories/auth_repository.dart';

class GoogleSignInUsecase
    implements BaseUseCase<BaseDataResponse<TokenEntity>, void> {
  GoogleSignInUsecase(this._authRepository);

  final AuthRepository _authRepository;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  @override
  Future<BaseDataResponse<TokenEntity>> call({required void params}) async {
    final GoogleSignInAccount? gUser = await _googleSignIn.signIn();

    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    final credentials = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credentials);

    return _authRepository.googleSignIn(
      'google',
      gUser,
    );
  }
}
