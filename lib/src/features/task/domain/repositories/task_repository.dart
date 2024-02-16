import '../../../../core/bases/base_data.dart';
import '../models/task.dart';

abstract class TaskRepository {
  // Get all To-do list from user by date
  Future<DataState<List<Task>>> getTaskByUser(String email, String date);

  // Get all program's tasks by program id
  Future<DataState<List<Task>>> getTaskByProgramId(String programId);

  // Joining program
  Future<DataState<List<Task>>> joinProgram(
    List<Task> tasks,
    String email,
    String programId,
  );

  // Changing task status to done
  Future<DataState<Task>> changeTaskStatusToDone(String taskId);

  // Changing task status to not done
  Future<DataState<Task>> changeTaskStatustoNotDone(String taskId);

  // Creating Task
  Future<DataState<Task>> createTask(Task task);

  // Deleting Task
  Future<DataState<Task>> deleteTask(Task task);
}
