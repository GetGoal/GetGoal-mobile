import '../features/program/domain/entities/program_create.dart';
import '../features/task/domain/entities/task.dart';

class AppCache {
  static late String userEmail;
  static late ProgramCreate programCreate;
  static List<Task> programTaskCreateList = [];
  static List<Task> taskPlanningList = [];

  static void removeAllAppCacheData() {
    userEmail = '';
    programCreate = const ProgramCreate();
    programTaskCreateList = [];
    taskPlanningList = [];
  }
}
