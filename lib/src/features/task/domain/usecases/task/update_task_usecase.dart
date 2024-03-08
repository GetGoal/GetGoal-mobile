import '../../../../../core/bases/base_data.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../entities/task.dart';
import '../../repositories/task_repository.dart';

class UpdateTaskUsecase implements BaseUseCase<DataState<Task>, Task> {
  UpdateTaskUsecase(this._taskRepository);

  final TaskRepository _taskRepository;

  @override
  Future<DataState<Task>> call({
    required Task params,
    String? taskId,
  }) {
    return _taskRepository.editTask(params, taskId!);
  }
}
