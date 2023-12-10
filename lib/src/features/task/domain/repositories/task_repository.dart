import '../../../../core/bases/base_data.dart';
import '../models/task.dart';

abstract class TaskRepository {
  Future<DataState<List<Task>>> getTaskByUser(String email, String date);
  Future<DataState<List<Task>>> getTaskByProgramId(String programId);
}
