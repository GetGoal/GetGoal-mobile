import '../../../../core/bases/base_data.dart';
import '../models/program.dart';
import '../models/program_create.dart';

abstract class ProgramRepository {
  Future<DataState<List<Program>>> getPrograms();
  Future<DataState<List<Program>>> getProgramByLabelName(
    List<String> listOfLabelName,
  );
  Future<DataState<Program>> getProgramById(String programId);
  Future<DataState<List<Program>>> getProramBySearch(String text);
  Future<DataState<Program>> createProgram(ProgramCreate programId);
}
