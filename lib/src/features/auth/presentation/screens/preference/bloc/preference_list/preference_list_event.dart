part of 'preference_list_bloc.dart';

@freezed
class PreferenceListEvent with _$PreferenceListEvent {
  const factory PreferenceListEvent.started() = PreferenceListEventStarted;
  const factory PreferenceListEvent.onTapped({
    required List<ProgramFilter> labels,
  }) = PreferenceListEventOnTapped;
}
