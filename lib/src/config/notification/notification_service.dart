import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

class NotificationService {
  final _localNotificationsPlugin = FlutterLocalNotificationsPlugin();

  Future<void> initNotification() async {
    const androidInitializationSettings =
        AndroidInitializationSettings('futter_logo');
    const darwinInitializationSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
      onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    );

    const initializationSettings = InitializationSettings(
      android: androidInitializationSettings,
      iOS: darwinInitializationSettings,
    );

    await _localNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveBackgroundNotificationResponse:
          onDidReceiveBackgroundNotificationResponse,
    );
  }

  static void onDidReceiveLocalNotification(
    int id,
    String? title,
    String? body,
    String? payload,
  ) async {}

  static void onDidReceiveBackgroundNotificationResponse(
    NotificationResponse details,
  ) {}

  notificationDetail() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        'channelId',
        'channelName',
        importance: Importance.max,
      ),
      iOS: DarwinNotificationDetails(),
    );
  }

  Future<void> showNotification(
    int id,
    String? title,
    String? body,
    String? payload,
  ) async {
    return _localNotificationsPlugin.show(
      id,
      title,
      body,
      await notificationDetail(),
    );
  }

  Future<void> scheduleNotification({
    int? id,
    String? title,
    String? body,
    String? payload,
    required DateTime scheduledTime,
  }) async {
    return _localNotificationsPlugin.zonedSchedule(
      id ?? 0,
      title,
      body,
      tz.TZDateTime.from(scheduledTime, tz.local),
      await notificationDetail(),
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  Future<void> cancelScheduleNotification(int id) async {
    await _localNotificationsPlugin.cancel(id);
  }
}
