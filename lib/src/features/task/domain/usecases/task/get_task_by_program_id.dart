import '../../../../../core/bases/base_data.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../entities/task.dart';
import '../../repositories/task_repository.dart';

class GetTaskByProgramIdUsecase
    implements BaseUseCase<DataState<List<Task>>, String> {
  GetTaskByProgramIdUsecase(this._taskRepository);

  final TaskRepository _taskRepository;

  @override
  Future<DataState<List<Task>>> call({required String params}) {
    return _taskRepository.getTaskByProgramId(params);
  }
}
