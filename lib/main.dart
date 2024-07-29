// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:word_meaning/bindings/bindings.dart';
import 'package:word_meaning/features/onboarding/onboarding_screen.dart';
import 'package:word_meaning/features/take_collectionaname/view/take_collectionname_view.dart';
import 'package:word_meaning/features/text_audio/controller.dart/screen/widget/custom_text.dart';
import 'package:word_meaning/firebase/firebase_config.dart';
import 'package:word_meaning/route/routes.dart';
import 'package:word_meaning/temporary.dart';
import 'package:word_meaning/utils/color.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  // Handle background messages and update badge count here
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Get.put(WordController());
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBSVaf5yAGRA5-sanf18k3FcAxkRSVDdYA",
            authDomain: "quizword-75ffc.firebaseapp.com",
            projectId: "quizword-75ffc",
            storageBucket: "quizword-75ffc.appspot.com",
            messagingSenderId: "428599192434",
            appId: "1:428599192434:web:a84c7127ee165a5084cbeb",
            measurementId: "G-WW9646L3TX"));
  } else {
    await Firebase.initializeApp(
        options: FirebaseOptions(
      apiKey: "AIzaSyBg7rybDE5gbMN01mOzvbPWUqIPRgjnRBc",
      appId: "1:428599192434:android:d74f175c4b52892384cbeb",
      messagingSenderId: "428599192434",
      projectId: "quizword-75ffc",
    ));
  }
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  FirebaseApi().initNotifications();
  runApp(MyApp());
}

class MyApp2 extends StatelessWidget {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  MyApp2() {
    const initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const initializationSettingsIOS = DarwinInitializationSettings();
    const initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);

    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: (NotificationResponse response) {
      // Handle notification tap
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vocub Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Onboarding(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  MyHomePage({required this.flutterLocalNotificationsPlugin});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _notificationCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Badge Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await _showNotification();
            setState(() {
              _notificationCount++;
            });
            FlutterAppBadger.updateBadgeCount(_notificationCount);
          },
          child: Text('Show Notification'),
        ),
      ),
    );
  }

  Future<void> _showNotification() async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'high_importance_channel', // Channel ID
      'High Importance Notifications', // Channel name
      channelDescription:
          'This channel is used for important notifications.', // Channel description
      importance: Importance.max,
      priority: Priority.high,
      showWhen: true,
    );
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await widget.flutterLocalNotificationsPlugin.show(
      _notificationCount,
      'New Notification ${_notificationCount}',
      'You have a new notification',
      platformChannelSpecifics,
      payload: 'item x',
    );
  }

  @override
  void initState() {
    super.initState();
    widget.flutterLocalNotificationsPlugin.initialize(
      const InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'),
        iOS: DarwinInitializationSettings(),
      ),
      onDidReceiveNotificationResponse: (NotificationResponse response) async {
        setState(() {
          _notificationCount = 0;
        });
        FlutterAppBadger.removeBadge();
      },
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: WordBinding(),
      getPages: RouteHelper.routes,
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(buttonColor)),
          ),
          inputDecorationTheme: InputDecorationTheme(
              labelStyle: TextStyle(
                  fontFamily: 'Cera Pro', fontWeight: FontWeight.bold),
              hintStyle: TextStyle(
                  fontFamily: 'Cera Pro', fontWeight: FontWeight.bold)),
          appBarTheme: AppBarTheme(
              backgroundColor: backgroundColor,
              centerTitle: false,
              iconTheme: IconThemeData(color: Colors.white),
              titleTextStyle: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Cera Pro')),
          textTheme:
              const TextTheme(bodyMedium: TextStyle(fontFamily: 'Cera Pro'))),
      debugShowCheckedModeBanner: false,
      title: "Personal Dictionary",
      home: Onboarding(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   MyApp() {
//     final initializationSettingsAndroid =
//         AndroidInitializationSettings('@mipmap/ic_launcher');
//     final initializationSettingsIOS = DarwinInitializationSettings();
//     final initializationSettings = InitializationSettings(
//         android: initializationSettingsAndroid, iOS: initializationSettingsIOS);

//     flutterLocalNotificationsPlugin.initialize(initializationSettings,
//         onDidReceiveNotificationResponse: (NotificationResponse response) {
//       // Handle notification tap
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Notification Badge Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(flutterLocalNotificationsPlugin: flutterLocalNotificationsPlugin),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

//   MyHomePage({required this.flutterLocalNotificationsPlugin});

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _notificationCount = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Notification Badge Demo'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () async {
//             await _showNotification();
//             setState(() {
//               _notificationCount++;
//             });
//             FlutterAppBadger.updateBadgeCount(_notificationCount);
//           },
//           child: Text('Show Notification'),
//         ),
//       ),
//     );
//   }

//   Future<void> _showNotification() async {
//     const AndroidNotificationDetails androidPlatformChannelSpecifics =
//         AndroidNotificationDetails(
//       'high_importance_channel', // Channel ID
//       'High Importance Notifications', // Channel name
//       // Channel description
//       importance: Importance.max,
//       priority: Priority.high,
//       showWhen: false,
//     );
//     const NotificationDetails platformChannelSpecifics =
//         NotificationDetails(android: androidPlatformChannelSpecifics);
//     await widget.flutterLocalNotificationsPlugin.show(
//       2,
//       'New Notification',
//       'You have a new notification',
//       platformChannelSpecifics,
//       payload: 'item x',
//     );
//   }

//   @override
//   void initState() {
//     super.initState();
//     widget.flutterLocalNotificationsPlugin.initialize(
//       InitializationSettings(
//         android: AndroidInitializationSettings('@mipmap/ic_launcher'),
//         iOS: DarwinInitializationSettings(),
//       ),
//       onDidReceiveNotificationResponse: (NotificationResponse response) async {
//         setState(() {
//           _notificationCount = 0;
//         });
//         FlutterAppBadger.removeBadge();
//       },
//     );
//   }
// }