// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/constrains/color.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/constrains/data.dart';
import 'package:word_meaning/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:word_meaning/screen/operation/update.dart';

// // Import the functions you need from the SDKs you need
// import { initializeApp } from "firebase/app";
// import { getAnalytics } from "firebase/analytics";
// // TODO: Add SDKs for Firebase products that you want to use
// // https://firebase.google.com/docs/web/setup#available-libraries

// // Your web app's Firebase configuration
// // For Firebase JS SDK v7.20.0 and later, measurementId is optional
// const firebaseConfig = {
//   apiKey: "AIzaSyBSVaf5yAGRA5-sanf18k3FcAxkRSVDdYA",
//   authDomain: "quizword-75ffc.firebaseapp.com",
//   projectId: "quizword-75ffc",
//   storageBucket: "quizword-75ffc.appspot.com",
//   messagingSenderId: "428599192434",
//   appId: "1:428599192434:web:a84c7127ee165a5084cbeb",
//   measurementId: "G-WW9646L3TX"
// };

// // Initialize Firebase
// const app = initializeApp(firebaseConfig);
// const analytics = getAnalytics(app);
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
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
              backgroundColor: Colors.deepOrange,
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
      home: HomePage(),
    );
  }
}
