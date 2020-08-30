import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotifications {
  factory PushNotifications() => _singleton;

  PushNotifications._internal();

  final _firebaseMessaging = FirebaseMessaging();
  static final _singleton = PushNotifications._internal();
  Function(Map<String, dynamic> message) _onPushNotificationMessage;
  Function(Map<String, dynamic> message) _onPushNotificationLaunch;
  Function(Map<String, dynamic> message) _onPushNotificationResume;

  Future<void> init() {
    permissionRequest();
    initMessagesListener();
    return initTokenListener();
  }

  void setCallbacks(
      Function(Map<String, dynamic> message) onPushNotificationMessage,
      {Function(Map<String, dynamic> message) onPushNotificationLaunch,
      Function(Map<String, dynamic> message) onPushNotificationResume}) {
    _onPushNotificationMessage = onPushNotificationMessage;
    _onPushNotificationLaunch = onPushNotificationLaunch;
    _onPushNotificationResume = onPushNotificationResume;
  }

  Future<String> initTokenListener() async {
    _firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(sound: true, badge: true, alert: true));
    final fcmToken = await _firebaseMessaging.getToken();
    return fcmToken;
  }

  void initMessagesListener() {
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        if (_onPushNotificationMessage != null) {
          _onPushNotificationMessage(message);
        }
      },
      onLaunch: (Map<String, dynamic> message) async {
        if (_onPushNotificationLaunch != null) {
          _onPushNotificationLaunch(message);
        }
      },
      onResume: (Map<String, dynamic> message) async {
        if (_onPushNotificationResume != null) {
          _onPushNotificationResume(message);
        }
      },
    );
  }

  void permissionRequest() {
    _firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(sound: true, badge: true, alert: true));
    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings) {});
  }
}
