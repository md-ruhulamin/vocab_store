import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/common/widget/custom_text.dart';
import 'package:word_meaning/features/quiz/answersheet_view.dart';
import 'package:word_meaning/features/quiz/controller.dart';
import 'package:word_meaning/features/quiz/model.dart';
import 'package:word_meaning/homepage.dart';

import '../../common/model/word_model.dart';
import '../text_audio/controller.dart/screen/widget/custom_text.dart';

class QuizPage extends StatefulWidget {
  final List<Word> wordList;
  final int numberofMCQ;

  QuizPage({required this.wordList, required this.numberofMCQ});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  late List<QuizQuestion> quizList;
  int currentQuestionIndex = 0;
  double score = 0;
  int rightans = 0;
  @override
  void initState() {
    super.initState();
    quizList = Get.put(QuestionController())
        .generateQuiz(widget.wordList, widget.numberofMCQ);
  }

  void checkAnswer(String selectedMeaning) {
    if (quizList[currentQuestionIndex].correctMeaning == selectedMeaning) {
      setState(() {
        rightans++;
        score++;
      });
    } else {
      score = score - 0.25;
    }

    if (currentQuestionIndex < quizList.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      // Show result or end of quiz
      showDialog(
        context: context,
        builder: (_) => WillPopScope(
          onWillPop: () async {
        // If the user clicks outside, pop the current page
        Navigator.of(context).pop(); // Close the dialog
        Navigator.of(context).pop(); // Navigate to the previous page
        return false; // Prevent the default dialog closing behavior
      },
          child: AlertDialog(
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Quiz Completed ',
                  style: TextStyle(fontSize: 25, fontFamily: 'Cera Pro'),
                ),
                IconButton(
                    onPressed: () {
                      Get.to(HomePage());
                    },
                    icon: Icon(
                      Icons.home,
                      color: Colors.green,
                      size: 40,
                    )),
              ],
            ),
            content: Text(
              'Right Ans: ${rightans} \nWrong Ans:  ${currentQuestionIndex + 1 - rightans}\nYour score is $score/${quizList.length}',
              style: TextStyle(fontSize: 17, fontFamily: 'Cera Pro'),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Get.to(AnswerSheetScreen(quizList: quizList));
                },
                child: Text(
                  'See Answersheet',
                  style: TextStyle(fontSize: 17, fontFamily: 'Cera Pro'),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
                    questionController.ansList.value = [];
                    currentQuestionIndex = 0;
                    score = 0;
                    rightans = 0;
                    quizList = Get.put(QuestionController())
                        .generateQuiz(widget.wordList, widget.numberofMCQ);
                  });
                },
                child: Text(
                  'Restart',
                  style: TextStyle(fontSize: 17, fontFamily: 'Cera Pro'),
                ),
              ),
            ],
          ),
        ),
      );

    }
  }

  int selectedMeaningIndex = 78;
  QuestionController questionController = Get.put(QuestionController());
  @override
  Widget build(BuildContext context) {
    double radius = 20;
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Question ${currentQuestionIndex + 1}/${quizList.length}',
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  )),
              SizedBox(height: 20),
              Text(
                'Q${currentQuestionIndex + 1}. ${quizList[currentQuestionIndex].word}',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: InkWell(
                  onTap: () {
                    setState(() {
                      selectedMeaningIndex = 0;
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor:
                        selectedMeaningIndex == 0 ? Colors.green : Colors.grey,
                    radius: radius,
                    child: CustomText(
                      text: "A",
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                title: CustomText(
                  text: "${quizList[currentQuestionIndex].options[0]}",
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: InkWell(
                    onTap: () {
                      setState(() {
                        selectedMeaningIndex = 1;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: selectedMeaningIndex == 1
                          ? Colors.green
                          : Colors.grey,
                      radius: radius,
                      child: CustomText(
                        fontSize: 17,
                        text: "B",
                        fontWeight: FontWeight.normal,
                      ),
                    )),
                title: CustomText(
                  text: "${quizList[currentQuestionIndex].options[1]}",
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: InkWell(
                    onTap: () {
                      setState(() {
                        selectedMeaningIndex = 2;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: selectedMeaningIndex == 2
                          ? Colors.green
                          : Colors.grey,
                      radius: radius,
                      child: CustomText(
                        text: "C",
                        fontWeight: FontWeight.normal,
                        fontSize: 17,
                      ),
                    )),
                title: CustomText(
                  text: "${quizList[currentQuestionIndex].options[2]}",
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: InkWell(
                    onTap: () {
                      setState(() {
                        selectedMeaningIndex = 3;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: selectedMeaningIndex == 3
                          ? Colors.green
                          : Colors.grey,
                      radius: radius,
                      child: CustomText(
                        fontSize: 17,
                        text: "D",
                        fontWeight: FontWeight.normal,
                      ),
                    )),
                title: CustomText(
                  text: "${quizList[currentQuestionIndex].options[3]}",
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(),
                  ),
                  InkWell(
                      onTap: () {
                        if (selectedMeaningIndex < 4) {
                          questionController.ansList.add(
                              quizList[currentQuestionIndex]
                                  .options[selectedMeaningIndex]);
                          if (selectedMeaningIndex == 0) {
                            checkAnswer(
                                quizList[currentQuestionIndex].options[0]);
                          } else if (selectedMeaningIndex == 1) {
                            checkAnswer(
                                quizList[currentQuestionIndex].options[1]);
                          } else if (selectedMeaningIndex == 2) {
                            checkAnswer(
                                quizList[currentQuestionIndex].options[2]);
                          } else if (selectedMeaningIndex == 3) {
                            checkAnswer(
                                quizList[currentQuestionIndex].options[3]);
                          }
                          selectedMeaningIndex = 10;
                        } else {
                          Get.snackbar(
                              "Empty Selection", "Please select any option",
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: Colors.green);
                        }
                      },
                      child: CustomButton(text: "Next ")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
