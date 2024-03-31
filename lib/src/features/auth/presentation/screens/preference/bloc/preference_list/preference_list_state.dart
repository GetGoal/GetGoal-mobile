part of 'preference_list_bloc.dart';

@freezed
class PreferenceListState with _$PreferenceListState {
  const factory PreferenceListState.initial() = PreferenceListStateInitial;
  const factory PreferenceListState.loading() = PreferenceListStateLoading;
  const factory PreferenceListState.success({
    required List<ProgramFilter> labels,
  }) = PreferenceListStateSuccess;
  const factory PreferenceListState.failure({
    String? message,
  }) = PreferenceListStateFailure;
}
