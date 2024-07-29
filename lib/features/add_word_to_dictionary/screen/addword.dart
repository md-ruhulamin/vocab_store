// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:word_meaning/common/widget/custome_text_field.dart';
import 'package:word_meaning/features/search_word/screen/search_word.dart';
import 'package:word_meaning/utils/color.dart';
import 'package:word_meaning/controller.dart';
import 'package:flutter_app_badge_control/flutter_app_badge_control.dart';
import '../../collection/collection_controller.dart';

class AddNewWord extends StatefulWidget {
  const AddNewWord({
    Key? key,
  }) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _AddNewWordState createState() => _AddNewWordState();
}

class _AddNewWordState extends State<AddNewWord> {
  final AuthController authController = Get.find();
  TextEditingController wordEditingController = TextEditingController();
  TextEditingController meaningEditingController = TextEditingController();
  TextEditingController sentenceEditingController = TextEditingController();
  late WordController wordController;

  @override
  void initState() {
    super.initState();
    wordController = Get.put(WordController());
    wordController.fetchAllWords2();
    FlutterAppBadgeControl.isAppBadgeSupported().then((value) {
  print("isAppBadgeSupported: $value");
});
  }

  @override
  void dispose() {
    wordEditingController.dispose();
    meaningEditingController.dispose();
    sentenceEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text("Enrich You Dictionary"),
      ),
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          padding: EdgeInsets.only(top: 20.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      child: CustomTextField(
                        controller: wordEditingController,
                        hinttext: "Enter a Word",
                      )),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      child: CustomTextField(
                        maxline: 5,
                        controller: meaningEditingController,
                        hinttext: "Meaning",
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical:5),
                    child: CustomTextField(
                        maxline: 7,
                        controller: sentenceEditingController,
                        hinttext: "Sentence"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 42.0),
                        child: Text(
                          'Add Word',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Cera Pro'),
                        ),
                      ),
                      onPressed: () async {
                        print(authController.userString.value);
                        final String currentWord =
                            wordEditingController.text.trim().toLowerCase();
                        print(wordController.mywordList.length.toString());

                        int id = DateTime.now().microsecondsSinceEpoch;

                        if (wordEditingController.text.isNotEmpty) {
                          final CollectionReference words = FirebaseFirestore
                              .instance
                              .collection(authController.userString.value);
                          int wordID = wordController.mywordList.length;
                          String? docID = await checkModelExists(
                              authController.userString.value, currentWord);

                          bool isExist = isStringNotNullOrEmpty(docID);
                          if (!isExist) {
                            await words.doc(id.toString()).set({
                              'id': wordID,
                              'sentence': sentenceEditingController.text,
                              'word': currentWord,
                              'meaning': meaningEditingController.text
                            }).then((value) => allowNotification(2,currentWord));

                            wordController.fetchAllWords2();
                            
                            Get.off(WordSearchScreen());
                          } else {
                            Get.snackbar(
                                "Save Failed", "Word Already inserted");
                          }
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool isStringNotNullOrEmpty(String? value) {
    return value != null && value.isNotEmpty;
  }

  Future<String?> checkModelExists(
    String collectionName,
    String word,
  ) async {
    try {
      // Get reference to the Firestore collection
      CollectionReference collection =
          FirebaseFirestore.instance.collection(collectionName);

      // Query the collection for documents that match the given model
      QuerySnapshot querySnapshot =
          await collection.where('word', isEqualTo: word).get();

      // Check if any documents were found
      if (querySnapshot.docs.isNotEmpty) {
        return querySnapshot.docs.first.id; // Model exists
      } else {
        return null; // Model does not exist
      }
    } catch (e) {
      return null;
    }
  }

  void allowNotification(int n,String word) async {
    Permission.notification.request().then((value) {
      if (value.isGranted) {
        print("Granted");
        showNotification(n,word);
       
      } else {
        print('Permission is not granted');
      }
    });
  }

  void showNotification(int n,String word) async {
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const LinuxInitializationSettings initializationSettingsLinux =
        LinuxInitializationSettings(defaultActionName: 'Open notification');
    final DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(onDidReceiveLocalNotification:
            (int id, String? title, String? body, String? payload) {
      // your call back to the UI
    });
    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsDarwin,
            macOS: initializationSettingsDarwin,
            linux: initializationSettingsLinux);

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (NotificationResponse details) {},
    );
    final styleList = [
      BigTextStyleInformation(
        'This is a big text notification. It allows you to display a longer text in the notification.',
        htmlFormatBigText: true,
        contentTitle: 'Big Text Notification',
        htmlFormatContentTitle: true,
      ),
      BigPictureStyleInformation(
        DrawableResourceAndroidBitmap('@mipmap/ic_launcher'),
        largeIcon: DrawableResourceAndroidBitmap('assets/icons/icon.png'),
        contentTitle: 'Big Picture Notification',
        htmlFormatContentTitle: true,
        summaryText: 'This is a big picture notification',
        htmlFormatSummaryText: true,
      ),
      InboxStyleInformation(
        [],
        contentTitle: '$word ',
        htmlFormatContentTitle: true,
        summaryText: '$word is added to your dictionary',
        htmlFormatSummaryText: true,
      ),
    ];

    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
            'high_importance_channel', // Channel ID
            'High Importance Notifications', // Channel name
            channelDescription:
                'This channel is used for important notifications.',
            importance: Importance.max,
            priority: Priority.high,
            ticker: 'ticker',
            number: 1,
            styleInformation: styleList[n]);

    NotificationDetails notificationDetails =
        NotificationDetails(android: androidNotificationDetails);
    await flutterLocalNotificationsPlugin.show(
        wordController.mywordList.length, 'Successfully Added','$word is added at ${wordController.mywordList.length}', notificationDetails,
        payload: 'item x');
  }
}
