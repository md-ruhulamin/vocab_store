import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/common/model/word_model.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/data/data.dart';
import 'package:word_meaning/features/idom_phrase/controllers/idom_controller.dart';
import 'package:word_meaning/features/quiz/screen.dart';
import '../../common/widget/custom_text.dart';
import '../text_audio/controller.dart/screen/widget/custom_text.dart';

class QuizPageInfo extends StatefulWidget {
  const QuizPageInfo({super.key});
  @override
  State<QuizPageInfo> createState() => _QuizPageInfoState();
}

class _QuizPageInfoState extends State<QuizPageInfo> {
  final TextEditingController MCQNumberController =
      new TextEditingController(text: "10");
  late WordController wordController = Get.put(WordController());
  late IdiomController idiomController = Get.put(IdiomController());
  int _selectedValue = 1;
  @override
  void initState() {
    super.initState();
    wordController.fetchAllWords();
    idiomController.fetchDefaultIdioms();
    idiomController.fetchUserIdioms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assess Your Skills"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    maxLines: 1,
                    style: TextStyle(fontFamily: "Cera Pro"),
                    keyboardType: TextInputType.number,
                    controller: MCQNumberController,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      label: CustomText(
                        text: "Number of MCQ (Ex. 10,15,20 )",
                        fontSize: 17,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: <Widget>[
                      RadioListTile<int>(
                        title: CustomText(
                          text: 'Practice Words',
                          fontSize: 17,
                        ),
                        value: 1,
                        groupValue: _selectedValue,
                        onChanged: (int? value) {
                          setState(() {
                            _selectedValue = value!;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        title: CustomText(
                          text: 'My Vocab Store',
                          fontSize: 17,
                        ),
                        value: 2,
                        groupValue: _selectedValue,
                        onChanged: (int? value) {
                          setState(() {
                            print(wordController.mywordList.length);
                            _selectedValue = value!;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        title: CustomText(
                          text: 'Practice Idiom List',
                          fontSize: 17,
                        ),
                        value: 3,
                        groupValue: _selectedValue,
                        onChanged: (int? value) {
                          setState(() {
                            _selectedValue = value!;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        title: CustomText(
                          text: 'My Idiom and Phrases',
                          fontSize: 17,
                        ),
                        value: 4,
                        groupValue: _selectedValue,
                        onChanged: (int? value) {
                          setState(() {
                            print(idiomController.myIdiomList.length);
                            _selectedValue = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      List<Word> _wordlist = [];
                      if (int.parse(MCQNumberController.text.toString()) > 0) {
                        if (_selectedValue == 1) {
                          _wordlist = mydatalist;
                        } else if (_selectedValue == 2) {
                          _wordlist = wordController.mywordList.value;
                        } else if (_selectedValue == 3) {
                          _wordlist = idiomController.myDeafultIdiomList;
                        } else if (_selectedValue == 4) {
                          _wordlist = idiomController.myIdiomList;
                        }
                        if (_wordlist.length <
                            int.parse(MCQNumberController.text.toString())) {
                          Get.snackbar(
                              "Failed", "Your Selected list is too small");
                        } else {
                          Get.to(
                            QuizPage(
                                wordList: _wordlist,
                                numberofMCQ: int.parse(
                                    MCQNumberController.text.toString())),
                          );
                        }
                      } else {
                        Get.snackbar("Failed", "Number of words is missing ");
                      }
                    },
                    child: CustomButton(text: "Start Quiz"),
                  ),

                  SizedBox(height: 20,),
                  CustomText(
                    text: 'Mark for Each Question : 1 \nNegative Mark for Each : 0.25',
                    color: Colors.black54,
                    fontSize: 17,
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
