// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'package:word_meaning/bindings/bindings.dart';
import 'package:word_meaning/features/onboarding/onboarding_screen.dart';
import 'package:word_meaning/features/search_meaning/model/onlinewordclass.dart';
import 'package:word_meaning/features/take_collectionaname/view/take_collectionname_view.dart';
import 'package:word_meaning/features/text_audio/controller.dart/screen/widget/custom_text.dart';
import 'package:word_meaning/firebase/firebase_config.dart';
import 'package:word_meaning/route/routes.dart';
import 'package:word_meaning/sqflite/table/table_list.dart';
import 'package:word_meaning/sqflite/table/view.dart';
import 'package:word_meaning/sqflite/view.dart';
import 'package:word_meaning/temporary.dart';
import 'package:word_meaning/utils/color.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
// ignore: unused_import

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
  configLoading();
  runApp(MyApp());
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
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
// ignore_for_file: no_leading_underscores_for_local_identifiers, library_private_types_in_public_api, use_build_context_synchronously, use_key_in_widget_constructors, depend_on_referenced_packages

class Dog {
  final int id;
  final String word;
  final String meaning;
  final String sentence;

  Dog(this.id, this.word, this.meaning, this.sentence);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'word': word,
      'meaning': meaning,
      'sentence': sentence,
    };
  }

  factory Dog.fromMap(Map<String, dynamic> map) {
    return Dog(
      map['id'],
      map['word'],
      map['meaning'] ?? '',
      map['sentence'] ?? '',
    );
  }
}

class DogDatabase {
  static final DogDatabase instance = DogDatabase._init();
  static Database? _database;

  String? _tableName;

  set tableName(String value) {
    _tableName = value;
  }

  String get tableName {
    if (_tableName == null) throw Exception('Table name not set.');
    return _tableName!;
  }

  DogDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('word_database.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const meaningType = 'TEXT';

    await db.execute('''
CREATE TABLE $_tableName ( 
  id $idType, 
  word $textType,
  meaning $meaningType,
    sentence $meaningType
  )
''');
  }

  Future<void> insertDog(Dog dog) async {
    final db = await instance.database;
    await db.insert(_tableName!, dog.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Dog>> getDogs() async {
    final db = await instance.database;
    final result = await db.query(_tableName!);
    return result.map((json) => Dog.fromMap(json)).toList();
  }

  Future<void> updateDog(Dog dog) async {
    final db = await instance.database;
    await db
        .update(_tableName!, dog.toMap(), where: 'id = ?', whereArgs: [dog.id]);
  }

  Future<void> deleteDog(int id) async {
    final db = await instance.database;
    await db.delete(_tableName!, where: 'id = ?', whereArgs: [id]);
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}

class DogListScreen extends StatefulWidget {
  @override
  _DogListScreenState createState() => _DogListScreenState();
}

class _DogListScreenState extends State<DogListScreen> {
  late Future<List<Dog>> _dogList;

  @override
  void initState() {
    super.initState();
   DogDatabase.instance.tableName= "cats";
    _refreshDogList();
  }

  void _refreshDogList() {
    setState(() {
      _dogList = DogDatabase.instance.getDogs();
    });
  }

  void _showAddDogDialog(BuildContext context) {
    final _nameController = TextEditingController();
    final _meaningController = TextEditingController();
    final _sentenceController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Dog'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Word'),
              ),
              TextField(
                controller: _meaningController,
                decoration: InputDecoration(labelText: 'Meaning'),
              ),
              TextField(
                controller: _sentenceController,
                decoration: InputDecoration(labelText: 'Sentence'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () async {
                final word = _nameController.text;
                final meaning = _meaningController.text ?? "";

                if (word.isNotEmpty) {
                  final newDog = Dog(DateTime.now().millisecondsSinceEpoch,
                      word, meaning, word);
                  await DogDatabase.instance.insertDog(newDog);
                  _refreshDogList();
                }

                Navigator.of(context).pop();
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }

  void _showUpdateDogDialog(Dog dog, BuildContext context) {
    final _nameController = TextEditingController(text: dog.word);
    final _meaningController = TextEditingController(text: dog.meaning);
    final _sentenceController = TextEditingController(text: dog.meaning);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Update Dog'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Word'),
              ),
              TextField(
                controller: _meaningController,
                decoration: InputDecoration(labelText: 'Meaning'),
              ),
              TextField(
                controller: _sentenceController,
                decoration: InputDecoration(labelText: 'Sentence'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () async {
                final word = _nameController.text;
                final meaning = _meaningController.text ?? '';

                if (word.isNotEmpty) {
                  final updatedDog = Dog(dog.id, word, meaning, word);
                  await DogDatabase.instance.updateDog(updatedDog);
                  _refreshDogList();
                }

                Navigator.of(context).pop();
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }

  void _deleteDog(int id) async {
    await DogDatabase.instance.deleteDog(id);
    _refreshDogList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dog List'),
      ),
      body: FutureBuilder<List<Dog>>(
        future: _dogList,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          final dogs = snapshot.data!;

          return ListView.builder(
            itemCount: dogs.length,
            itemBuilder: (context, index) {
              final dog = dogs[index];

              return CustomListItemView(
                index: index,
                word: dog,
                onPressed: () {},
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddDogDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class CustomListItemView extends StatelessWidget {
  const CustomListItemView({
    super.key,
    required this.word,
    required this.onPressed,
    required this.index,
  });
  final VoidCallback onPressed;

  final Dog word;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            color: listColor.withOpacity(0.8),
            borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          onTap: onPressed,
          leading: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(100)),
            height: 45,
            width: 45,
            child: FittedBox(
              child: Text(
                '${index + 1}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 15, fontFamily: 'Cera Pro', color: Colors.white),
              ),
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(icon: Icon(Icons.edit), onPressed: () {}),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
              ),
            ],
          ),
          title: Text(
            '${word.word.capitalizeFirst}',
            style: const TextStyle(
                fontSize: 18,
                fontFamily: 'Cera Pro',
                fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            ' ${word.meaning.capitalizeFirst}',
            maxLines: 1,
            style: const TextStyle(fontSize: 15, color: Colors.grey),
          ),
        ));
  }
}
