import '../../../../../core/bases/base_data.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../models/task.dart';
import '../../repositories/task_repository.dart';

class DeleteTaskUsecase implements BaseUseCase<DataState<Task>, String> {
  DeleteTaskUsecase(this._taskRepository);

  final TaskRepository _taskRepository;

  @override
  Future<DataState<Task>> call({required String params}) {
    return _taskRepository.deleteTask(params);
  }
}
