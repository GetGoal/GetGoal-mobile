import '../../../../../core/bases/base_data_response.dart';
import '../../../../../core/bases/base_usecase.dart';
import '../../../../program/domain/entities/program_filter.dart';
import '../../repositories/auth_repository.dart';

class GetCategoryPreferenceUsecase
    implements BaseUseCase<BaseDataResponse, void> {
  GetCategoryPreferenceUsecase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<BaseDataResponse<List<ProgramFilter>>> call({void params}) {
    return _authRepository.getCategoryPreferences();
  }
}
