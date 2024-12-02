import 'dart:math';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:word_meaning/features/quiz/model.dart';

import '../../common/model/word_model.dart';

class QuestionController extends GetxController {
  RxList ansList = [].obs;
  RxList QuestionList = [].obs;

  List<QuizQuestion> generateQuiz(List<Word> wordList, int n) {

    final random = Random();
    List<QuizQuestion> quizList = [];
    // Shuffle the word list and select the first 10 words for the quiz
    wordList.shuffle();
    wordList.reversed;
    List<Word> selectedWords = wordList.take(n).toList();
    // Generate quiz questions
    for (var word in selectedWords) {
      List<String> options = [word.meaning];
      // Add three random incorrect meanings
      while (options.length < 4) {
        String randomMeaning =
            wordList[random.nextInt(wordList.length)].meaning;
        if (!options.contains(randomMeaning)) {
          options.add(randomMeaning);
        }
      }
      // Shuffle the options
      options.shuffle();
      // Add the question to the quiz list
      quizList.add(QuizQuestion(
        word: word.word,
        correctMeaning: word.meaning,
        options: options,
      ));
    }

    return quizList;
  }
}
