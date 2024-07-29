// import 'package:app_badge_plus/app_badge_plus.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:word_meaning/common/widget/custom_text.dart';

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int count = 0;

//   @override
//   void initState() {
//     super.initState();
//   }

//   int styleNumber = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           appBar: AppBar(),
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 InkWell(
//                   onTap: () {
//                     allowNotification(0);
//                   },
//                   child: Container(
//                       padding: EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                           color: Colors.red,
//                           borderRadius: BorderRadius.circular(10)),
//                       child: CustomText(
//                         text: 'Show Notification Big Text',
//                         fontSize: 17,
//                         color: Colors.white,
//                       )),
//                 ),
//                 SizedBox(height: 20),
//                 InkWell(
//                   onTap: () {
//                     allowNotification(1);
//                   },
//                   child: Container(
//                       padding: EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                           color: Colors.blue,
//                           borderRadius: BorderRadius.circular(10)),
//                       child: CustomText(
//                         text: 'Show Notification Big Picture',
//                         fontSize: 17,
//                         color: Colors.white,
//                       )),
//                 ),
//                 SizedBox(height: 20),
//                 InkWell(
//                   onTap: () {
//                     allowNotification(2);
//                   },
//                   child: Container(
//                       padding: EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                           color: Colors.green,
//                           borderRadius: BorderRadius.circular(10)),
//                       child: CustomText(
//                         text: 'Show Notification Input Style',
//                         fontSize: 17,
//                         color: Colors.white,
//                       )),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }

//   void allowNotification(int n) async {
//     Permission.notification.request().then((value) {
//       if (value.isGranted) {
//         print("Granted");
//         showNotification(n);
//         count++;
//       } else {
//         print('Permission is not granted');
//       }
//     });
//   }

//   void showNotification(int n) async {
//     FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//         FlutterLocalNotificationsPlugin();

//     // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('@mipmap/ic_launcher');
//     const LinuxInitializationSettings initializationSettingsLinux =
//         LinuxInitializationSettings(defaultActionName: 'Open notification');
//     final DarwinInitializationSettings initializationSettingsDarwin =
//         DarwinInitializationSettings(onDidReceiveLocalNotification:
//             (int id, String? title, String? body, String? payload) {
//       // your call back to the UI
//     });
//     final InitializationSettings initializationSettings =
//         InitializationSettings(
//             android: initializationSettingsAndroid,
//             iOS: initializationSettingsDarwin,
//             macOS: initializationSettingsDarwin,
//             linux: initializationSettingsLinux);

//     await flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
//       onDidReceiveNotificationResponse: (NotificationResponse details) {},
//     );
//     final styleList = [
//       BigTextStyleInformation(
//         'This is a big text notification. It allows you to display a longer text in the notification.',
//         htmlFormatBigText: true,
//         contentTitle: 'Big Text Notification',
//         htmlFormatContentTitle: true,
//       ),
//       BigPictureStyleInformation(
        
//         DrawableResourceAndroidBitmap('@mipmap/ic_launcher'),
//         largeIcon: DrawableResourceAndroidBitmap('assets/icons/icon.png'),
//         contentTitle: 'Big Picture Notification',
//         htmlFormatContentTitle: true,
//         summaryText: 'This is a big picture notification',
//         htmlFormatSummaryText: true,
//       ),
//       InboxStyleInformation(
//         ['Line 1', 'Line 2', 'Line 3', 'Line 4', 'Line 5'],
//         contentTitle: 'Inbox Notification',
//         htmlFormatContentTitle: true,
//         summaryText: 'This is an inbox notification',
//         htmlFormatSummaryText: true,
//       ),
//     ];

//     AndroidNotificationDetails androidNotificationDetails =
//         AndroidNotificationDetails(
//             'high_importance_channel', // Channel ID
//             'High Importance Notifications', // Channel name
//             channelDescription:
//                 'This channel is used for important notifications.',
//             importance: Importance.max,
//             priority: Priority.high,
//             ticker: 'ticker',
//             number: 1,
//             styleInformation: styleList[n]);

//     NotificationDetails notificationDetails =
//         NotificationDetails(android: androidNotificationDetails);
//     await flutterLocalNotificationsPlugin.show(
//         count, 'Test Notification $count', 'Test Title', notificationDetails,
//         payload: 'item x');
//   }
// }
