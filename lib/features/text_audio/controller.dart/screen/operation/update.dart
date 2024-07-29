// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, must_be_immutable
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/common/collection_name.dart';
import 'package:word_meaning/common/model/word_model.dart';
import 'package:word_meaning/main.dart';

import 'package:word_meaning/utils/color.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/features/add_word_to_dictionary/screen/addword.dart';

import '../../../../collection/collection_controller.dart';

class UpdateWordScreen extends StatefulWidget {
  Word word;
  int index;

  UpdateWordScreen({
    Key? key,
    required this.word,
    required this.index,
  }) : super(key: key);

  @override
  _UpdateWordScreenState createState() => _UpdateWordScreenState();
}

class _UpdateWordScreenState extends State<UpdateWordScreen> {
  final AuthController authController = Get.find();
  TextEditingController wordEditingController = TextEditingController();
  TextEditingController meaningEditingController = TextEditingController();
  TextEditingController sentenceEditingController = TextEditingController();

  @override
  void dispose() {
    wordEditingController.dispose();
    meaningEditingController.dispose();
    sentenceEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var wordController = Get.put(WordController());
    wordEditingController.text = widget.word.word;
    meaningEditingController.text = widget.word.meaning;
    sentenceEditingController.text = widget.word.sentence;
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Your Word "),
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
                    child: TextField(
                      style: TextStyle(
                          fontFamily: 'Cera Pro', fontWeight: FontWeight.bold),
                      controller: wordEditingController,
                      decoration: InputDecoration(
                          label: Text("Word"),
                          border: OutlineInputBorder(),
                          hintText: widget.word.word,
                          hintStyle: TextStyle(
                              fontFamily: 'Cera Pro',
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    child: TextField(
                      style: TextStyle(
                          fontFamily: 'Cera Pro', fontWeight: FontWeight.bold),
                      maxLines: 3,
                      controller: meaningEditingController,
                      decoration: InputDecoration(
                          label: Text("Meaning"),
                          border: OutlineInputBorder(),
                          hintText: meaningEditingController.text),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    child: TextField(
                      maxLines: 5,
                      style: TextStyle(
                          fontFamily: 'Cera Pro', fontWeight: FontWeight.bold),
                      controller: sentenceEditingController,
                      decoration: InputDecoration(
                          label: Text("Sentence"),
                          border: OutlineInputBorder(),
                          hintText: sentenceEditingController.text),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 42.0),
                        child: Text(
                          'Update Word',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Cera Pro'),
                        ),
                      ),
                      onPressed: () async {
                        //    wordController.fetchAllWords2();
                        int docid = widget.word.id;
                        final CollectionReference collectionRef =
                            FirebaseFirestore.instance
                                .collection(authController.userString.value);

                        String? docID = await checkModelExists(
                            authController.userString
                                .value, // Replace with your Firestore collection name
                            widget.word.word.toLowerCase());

                        //   print(docID);
                        if (wordEditingController.text.isNotEmpty) {
                          bool isExist = isStringNotNullOrEmpty(docID);
                          if (isExist) {
                            // print(docID);
                            // print("Exist: ");
                            collectionRef.doc(docID).update({
                              'id': docid,
                              'sentence': sentenceEditingController.text,
                              'word': wordEditingController.text.trim().toLowerCase(),
                              'meaning': meaningEditingController.text
                            });
                            Get.snackbar(
                                "Word Exist", "Updated Successfully");
                          } else {
                         //   print("Not Exist: ");

                            int id = DateTime.now().microsecondsSinceEpoch;
                            int wordID = wordController.mywordList.length;

                            await collectionRef.doc(id.toString()).set({
                              'id': wordID,
                              'sentence': sentenceEditingController.text,
                              'word': wordEditingController.text.toLowerCase(),
                              'meaning': meaningEditingController.text
                            }).then((value) => Get.snackbar("Success",
                                "${wordEditingController.text} added Successfully"));

                            Navigator.of(context).pop();
                          }
                          wordController.fetchAllWords2();
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: frontColor,
        onPressed: () {
          Get.to(AddNewWord());
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
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
}
