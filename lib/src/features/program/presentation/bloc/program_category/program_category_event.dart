part of 'program_category_bloc.dart';

@freezed
class ProgramCategoryEvent with _$ProgramCategoryEvent {
  const factory ProgramCategoryEvent.started() = ProgramCategoryEventStarted;
  const factory ProgramCategoryEvent.onCategoryTapped({
    required List<ProgramFilter> labels,
  }) = ProgramCategoryEventOnCategoryTapped;
}
