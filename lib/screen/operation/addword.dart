// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/constrains/color.dart';
import 'package:word_meaning/controller.dart';

class AddNewWord extends StatefulWidget {
  const AddNewWord({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AddNewWordState createState() => _AddNewWordState();
}

class _AddNewWordState extends State<AddNewWord> {
  TextEditingController wordEditingController = TextEditingController();
  TextEditingController meaningEditingController = TextEditingController();
  TextEditingController sentenceEditingController = TextEditingController();
  late WordController wordController;

  @override
  void initState() {
    super.initState();
    wordController = Get.put(WordController());
    wordController.fetchAllWords2();
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
        backgroundColor: AppbarColor,
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
                    child: TextField(
                      controller: wordEditingController,
                      decoration: InputDecoration(
                        label: Text("Word"),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    child: TextField(
                      maxLines: 3,
                      controller: meaningEditingController,
                      decoration: InputDecoration(
                        label: Text("Meaning"),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    child: TextField(
                      maxLines: 5,
                      controller: sentenceEditingController,
                      decoration: InputDecoration(
                        label: Text("Sentence"),
                        border: OutlineInputBorder(),
                      ),
                    ),
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
                        print(wordController.mywordList.length.toString());
                        final CollectionReference words =
                            FirebaseFirestore.instance.collection('myword');
                        int id = DateTime.now().microsecondsSinceEpoch;
                        int wordID = wordController.mywordList.last.id + 1;

                        print(wordID);
                        if (wordEditingController.text.isNotEmpty) {
                          await words.doc(id.toString()).set({
                            'id': wordID,
                            'sentence': sentenceEditingController.text,
                            'word': wordEditingController.text,
                            'meaning': meaningEditingController.text
                          }).then((value) => Get.snackbar("Success",
                              "${wordEditingController.text} added Successfully"));

                          // ignore: use_build_context_synchronously
                          Navigator.of(context).pop();
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
}
