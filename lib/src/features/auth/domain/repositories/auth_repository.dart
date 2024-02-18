import '../../../../core/bases/base_data.dart';
import '../../../../core/bases/base_data_response.dart';
import '../entity/create_user.dart';
import '../entity/login_entity.dart';
import '../entity/token_entity.dart';

abstract class AuthRepository {
  // Create account
  Future<BaseDataResponse> registerAccount(CreateUser userData);

  // Verify account
  Future<BaseDataResponse> verifyAccount(String code);

  // Login
  Future<BaseDataResponse<TokenEntity>> login(LoginEntity loginData);
}
