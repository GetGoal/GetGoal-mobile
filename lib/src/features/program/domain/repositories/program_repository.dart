import '../../../../core/bases/base_data.dart';
import '../../../../core/bases/base_data_response.dart';
import '../models/program.dart';
import '../models/program_create.dart';

abstract class ProgramRepository {
  Future<DataState<List<Program>>> getPrograms();
  Future<DataState<List<Program>>> getProgramByLabelName(
    List<String> listOfLabelName,
  );
  Future<DataState<Program>> getProgramById(String programId);
  Future<DataState<List<Program>>> getProramBySearch(String text);
  Future<BaseDataResponse<Program>> createProgram(ProgramCreate programId);

  // Delete Program
  Future<BaseDataResponse> deleteProgram(String programId);
}
