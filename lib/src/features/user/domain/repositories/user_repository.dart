import '../../../../core/bases/base_data_response.dart';
import '../../../program/domain/entities/program.dart';
import '../entities/user_profile_entity.dart';

abstract class UserRepository {
  // Get user's program
  Future<BaseDataResponse<List<Program>>> getUserProgram();

  // Get user program
  Future<BaseDataResponse<UserProfileEntity>> getUserProfile();

  // Reset user password
  Future<BaseDataResponse> resetUserPassword(String email, String password);

  // Get user's program that user save
  Future<BaseDataResponse<List<Program>>> getUserSaveProgram();

  // Get user's program that user save
  Future<BaseDataResponse<List<Program>>> getUserJoinProgram();
}
