import '../../../../../core/bases/base_data.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../entities/task.dart';
import '../../repositories/task_repository.dart';

class GetTaskByTaskIdUsecase implements BaseUseCase<DataState<Task>, String> {
  GetTaskByTaskIdUsecase(this._taskRepository);

  final TaskRepository _taskRepository;

  @override
  Future<DataState<Task>> call({required String params}) {
    return _taskRepository.getTaskById(params);
  }
}