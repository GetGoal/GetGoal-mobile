part of 'recommended_program_bloc.dart';

@freezed
class RecommendedProgramEvent with _$RecommendedProgramEvent {
  const factory RecommendedProgramEvent.started() =
      RecommendedProgramEventStarted;
}
