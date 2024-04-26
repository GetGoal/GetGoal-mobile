part of 'recommended_program_bloc.dart';

@freezed
class RecommendedProgramState with _$RecommendedProgramState {
  const factory RecommendedProgramState.initial() =
      RecommendedProgramStateInitial;
  const factory RecommendedProgramState.loading() =
      RecommendedProgramStateLoading;
  const factory RecommendedProgramState.success({
    required List<Program> programs,
  }) = RecommendedProgramStateSuccess;
  const factory RecommendedProgramState.failure() =
      RecommendedProgramStateFailure;
}
