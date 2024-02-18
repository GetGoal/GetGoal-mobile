import '../features/program/domain/models/program_create.dart';
import '../features/task/domain/models/task.dart';

class AppCache {
  static late ProgramCreate programCreate;
  static List<Task> programTaskCreateList = [];
}
