import '../../../../core/bases/base_data.dart';
import '../models/task.dart';

abstract class TaskRepository {
  Future<DataState<Task>> getTaskByProgramId(String programId);
}
