part of 'update_user_label_bloc.dart';

@freezed
class UpdateUserLabelEvent with _$UpdateUserLabelEvent {
  const factory UpdateUserLabelEvent.started() = UpdateUserLabelEventStarted;
  const factory UpdateUserLabelEvent.onUpdated({
    required List<String> labels,
  }) = UpdateUserLabelEventOnUpdated;
}
