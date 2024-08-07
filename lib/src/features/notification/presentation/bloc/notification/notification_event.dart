part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.started() = NotificationEventStarted;
  const factory NotificationEvent.read() = NotificationEventRead;
}
