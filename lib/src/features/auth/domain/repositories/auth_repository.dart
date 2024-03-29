import 'package:google_sign_in/google_sign_in.dart';

import '../../../../core/bases/base_data_response.dart';
import '../entity/create_user.dart';
import '../entity/login_entity.dart';
import '../entity/token_entity.dart';

abstract class AuthRepository {
  // Create account
  Future<BaseDataResponse> registerAccount(CreateUser userData);

  // Verify account
  Future<BaseDataResponse> verifyAccount(String code);

  // Verify password reset
  Future<BaseDataResponse> verifyPasswordReset(String code);

  // Login
  Future<BaseDataResponse<TokenEntity>> login(LoginEntity loginData);

  // Logout
  Future<BaseDataResponse> logout();

  // Google Sign In
  Future<BaseDataResponse<TokenEntity>> googleSignIn(
    String? provider,
    GoogleSignInAccount? account,
  );

  Future<BaseDataResponse> resetPassword(String email);
}
