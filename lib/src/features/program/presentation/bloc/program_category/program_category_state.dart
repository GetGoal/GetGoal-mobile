part of 'program_category_bloc.dart';

@freezed
class ProgramCategoryState with _$ProgramCategoryState {
  const factory ProgramCategoryState.success({
    required List<ProgramFilter> labels,
  }) = ProgramCategoryStateSuccess;
}
