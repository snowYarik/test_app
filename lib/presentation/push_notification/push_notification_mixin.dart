import 'package:test_app/presentation/push_notification/push_notification_manager.dart';

mixin PushNotificationsMixin {
  void initPushNotifications() {
    final pushNotification = PushNotifications();
    pushNotification.init();
    pushNotification.initMessagesListener();
    pushNotification.setCallbacks(onPushNotificationMessage,
        onPushNotificationLaunch: onPushNotificationLaunch,
        onPushNotificationResume: onPushNotificationResume);
  }

  void onPushNotificationMessage(Map<String, dynamic> message) {}

  void onPushNotificationLaunch(Map<String, dynamic> message) {}

  void onPushNotificationResume(Map<String, dynamic> message) {}
}
