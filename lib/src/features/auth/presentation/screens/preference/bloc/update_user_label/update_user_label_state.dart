part of 'update_user_label_bloc.dart';

@freezed
class UpdateUserLabelState with _$UpdateUserLabelState {
  const factory UpdateUserLabelState.initial() = UpdateUserLabelStateInitial;
  const factory UpdateUserLabelState.loading() = UpdateUserLabelStateLoading;
  const factory UpdateUserLabelState.updated() = UpdateUserLabelStateUpdated;
  const factory UpdateUserLabelState.failure({
    String? message,
  }) = UpdateUserLabelStateFailure;
}
