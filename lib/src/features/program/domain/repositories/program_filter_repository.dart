import '../../../../core/bases/base_data.dart';
import '../entities/program_filter.dart';

abstract class ProgramFilterRepository {
  Future<DataState<List<ProgramFilter>>> getProgramFilters();
}
