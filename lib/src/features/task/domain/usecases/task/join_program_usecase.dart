import '../../../../../core/bases/base_data.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../models/task.dart';
import '../../repositories/task_repository.dart';

class JoinProgramUsecase
    implements BaseUseCase<DataState<List<Task>>, List<Task>> {
  JoinProgramUsecase(this._taskRepository);

  final TaskRepository _taskRepository;

  @override
  Future<DataState<List<Task>>> call({
    required List<Task> params,
    String? email,
    String? programId,
  }) {
    return _taskRepository.joinProgram(params, email!, programId!);
  }
}
