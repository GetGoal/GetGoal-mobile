part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = NotificationStateInitial;
  const factory NotificationState.loading() = NotificationStateLoading;
  const factory NotificationState.success({
    required Notification notificaitonList,
  }) = NotificationStateSuccess;
  const factory NotificationState.failure() = NotificationStateFailure;
}
