// // ignore_for_file: prefer_const_constructors

// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:word_meaning/constrains/data.dart';


// class FireBaseAdd extends StatefulWidget {
//   const FireBaseAdd({super.key});

//   @override
//   State<FireBaseAdd> createState() => _FireBaseAddState();
// }

// class _FireBaseAddState extends State<FireBaseAdd> {
  
//   @override
//   Widget build(BuildContext context) {
//     CollectionReference words = FirebaseFirestore.instance.collection('words');

//     return Scaffold(body: Center(child: AddWord()));
//   }
// }

// // class AddData extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Colors.green,
// //         title: Text("geeksforgeeks"),
// //       ),
// //       body: StreamBuilder(
// //         stream: FirebaseFirestore.instance.collection('words').snapshots(),
// //         builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
// //           if (!snapshot.hasData) {
// //             return Center(
// //               child: CircularProgressIndicator(),
// //             );
// //           }

// //           return ListView(
// //             children: snapshot.data!.docs.map((document) {
// //               return Container(
// //                 child: Center(child: Text(document['word'])),
// //               );
// //             }).toList(),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // } 
// class AddWord extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Firebase Example'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => _pushWordsToFirebase(),
//           child: Text('Push Words to Firebase'),
//         ),
//       ),
//     );
//   }

//   void _pushWordsToFirebase() {
//     // Example list of Word objects

//     CollectionReference words = FirebaseFirestore.instance.collection('words');
//     int i = 1119;
//     for (var word in wordsList) {
//       i++;
//       words
//           .doc(DateTime.now().microsecondsSinceEpoch.toString())
//           .set({
//             "id": i,
//             "word": word.word,
//             "meaning": word.meaning,
//             "sentence": word.sentence
//           })
//           .then((value) => print(i))
//           .catchError((error) => print("Failed to add user: $error"));
//       ;
//     }
//   }
// }

// // // class AddUser extends StatelessWidget {
// // //   final String fullName;
// // //   final String company;
// // //   final int age;

// // //   AddUser(this.fullName, this.company, this.age);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     // Create a CollectionReference called users that references the firestore collection
// // //     CollectionReference users = FirebaseFirestore.instance.collection('words');

// // //     return ElevatedButton(
// // //       onPressed: () {
// // //         users
// // //             .doc(DateTime.now().microsecondsSinceEpoch.toString())
// // //             .set({"word": idomsList[0].word, "meaning": idomsList[0].meaning})
// // //             .then((value) => print("User Added"))
// // //             .catchError((error) => print("Failed to add user: $error"));
// // //       },
// // //       child: Text(
// // //         "Add User",
// // //       ),
// // //     );
// // //   }
// // // }
