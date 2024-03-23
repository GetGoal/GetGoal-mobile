import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';

@freezed
sealed class Notification with _$Notification {
  const factory Notification() = _Notification;
}
