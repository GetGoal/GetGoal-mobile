import '../../../../../core/bases/base_data.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../models/program_filter.dart';
import '../../repositories/program_filter_repository.dart';

class GetProgramFilterUsecase
    implements BaseUseCase<DataState<List<ProgramFilter>>, void> {
  GetProgramFilterUsecase(this._programFilterRepository);

  final ProgramFilterRepository _programFilterRepository;

  @override
  Future<DataState<List<ProgramFilter>>> call({void params}) {
    return _programFilterRepository.getProgramFilters();
  }
}
