import '../../../../core/bases/base_data_response.dart';
import '../../../program/domain/models/program.dart';

abstract class UserRepository {
  // Get user's program
  Future<BaseDataResponse<List<Program>>> getUserProgram();
}
