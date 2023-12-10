import '../../../../../core/bases/base_data.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../models/task.dart';
import '../../repositories/task_repository.dart';

class GetTaskByUserUsecase
    implements BaseUseCase<DataState<List<Task>>, String> {
  GetTaskByUserUsecase(this._taskRepository);

  final TaskRepository _taskRepository;

  @override
  Future<DataState<List<Task>>> call({required String params, String? date}) {
    return _taskRepository.getTaskByUser(params, date!);
  }
}
