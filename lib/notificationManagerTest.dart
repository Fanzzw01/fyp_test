// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//
// class Notification {
//   final FlutterLocalNotificationsPlugin np = FlutterLocalNotificationsPlugin();
//
//   var isInit = false;
//
//   void init() {
//     if (isInit) return;
//     isInit = true;
//
//     var android = const AndroidInitializationSettings("@mipmap/logo");
//     var ios = const IOSInitializationSettings();
//
//     np.initialize(InitializationSettings(android: android, iOS: ios));
//   }
//
//   void send(String title, String body) {
//     init();
//
//     var androidDetails = const AndroidNotificationDetails(
//       'id描述',
//       '名称描述',
//       importance: Importance.max,
//       priority: Priority.high,
//     );
//     var iosDetails = const IOSNotificationDetails();
//     var details = NotificationDetails(
//       android: androidDetails,
//       iOS: iosDetails,
//     );
//     np.show(DateTime
//         .now()
//         .millisecondsSinceEpoch >> 10, title, body, details);
//   }
// }
// var notification = Notification();