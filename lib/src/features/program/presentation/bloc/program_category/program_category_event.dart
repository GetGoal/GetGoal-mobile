part of 'program_category_bloc.dart';

@freezed
class ProgramCategoryEvent with _$ProgramCategoryEvent {
  const factory ProgramCategoryEvent.started({
    List<Label>? labels,
  }) = ProgramCategoryEventStarted;
  const factory ProgramCategoryEvent.onCategoryTapped({
    required List<ProgramFilter> labels,
  }) = ProgramCategoryEventOnCategoryTapped;
  const factory ProgramCategoryEvent.onAddNewCategory({
    required List<ProgramFilter> labels,
    required ProgramFilter currentCategory,
  }) = ProgramCategoryEventOnAddNewCategory;
}
