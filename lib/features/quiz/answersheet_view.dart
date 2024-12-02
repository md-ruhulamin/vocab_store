import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/common/widget/custom_text.dart';
import 'package:word_meaning/features/quiz/controller.dart';
import 'package:word_meaning/features/quiz/model.dart';

class AnswerSheetScreen extends StatefulWidget {
  AnswerSheetScreen({super.key, required this.quizList});
  List<QuizQuestion> quizList;

  @override
  State<AnswerSheetScreen> createState() => _AnswerSheetScreenState();
}

class _AnswerSheetScreenState extends State<AnswerSheetScreen> {
  late QuestionController questionController;
  @override
  void initState() {
    super.initState();
    questionController = Get.put(QuestionController());
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Answer Sheet"),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: SizedBox(
              height: MediaQuery.of(context).size.height-60,
                child: ListView.builder(
                    itemCount: widget.quizList.length,
                    itemBuilder: (context, index) {
                      return Card(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text:
                                  "Q${index + 1} ${widget.quizList[index].word}",
                              fontSize: 22,
                            ),
                            OptionWidget(
                                optionChar: "A",
                                optionText:
                                    "${widget.quizList[index].options[0]}",
                                correctAnswer:
                                    "${widget.quizList[index].correctMeaning}",
                                myanswer: questionController.ansList[index]),
                            OptionWidget(
                                optionChar: "B",
                                optionText:
                                    "${widget.quizList[index].options[1]}",
                                correctAnswer:
                                    "${widget.quizList[index].correctMeaning}",
                                myanswer: questionController.ansList[index]),
                            OptionWidget(
                                optionChar: "C",
                                optionText:
                                    "${widget.quizList[index].options[2]}",
                                correctAnswer:
                                    "${widget.quizList[index].correctMeaning}",
                                myanswer: questionController.ansList[index]),
                            OptionWidget(
                                optionChar: "D",
                                optionText:
                                    "${widget.quizList[index].options[3]}",
                                correctAnswer:
                                    "${widget.quizList[index].correctMeaning}",
                                myanswer: questionController.ansList[index]),
                          ],
                        ),
                      ));
                    }))));
  }
}

class OptionWidget extends StatelessWidget {
  final correctAnswer;
  final myanswer;
  final optionText;
  final String optionChar;
  const OptionWidget({
    super.key,
    this.optionText,
    required this.optionChar,
    this.correctAnswer,
    this.myanswer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
          color: correctAnswer == optionText ?  Colors.green : myanswer==optionText? Colors.red.shade400: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        leading: CircleAvatar(
          backgroundColor:correctAnswer == optionText ?  Colors.white: myanswer==optionText? Colors.white: Colors.grey,     
               radius: 15,
          child: CustomText(
            text: optionChar,
            fontWeight: FontWeight.normal,
            fontSize: 15,
          ),
        ),
        title: CustomText(
          text: optionText,
          fontSize: 15,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
