import '../../../../../core/bases/base_data.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../models/task.dart';
import '../../repositories/task_repository.dart';

class CreateTaskUsecase implements BaseUseCase<DataState<Task>, Task> {
  CreateTaskUsecase(this._taskRepository);

  final TaskRepository _taskRepository;

  @override
  Future<DataState<Task>> call({required Task params}) {
    return _taskRepository.createTask(params);
  }
}
