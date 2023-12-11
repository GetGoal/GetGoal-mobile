import '../../../../core/bases/base_data.dart';
import '../models/program.dart';

abstract class ProgramRepository {
  Future<DataState<List<Program>>> getPrograms();
  Future<DataState<List<Program>>> getProgramByLabelName(String labelName);
  Future<DataState<Program>> getProgramById(String programId);
  Future<DataState<List<Program>>> getProramBySearch(String text);
}
