import 'package:get/get.dart';
import 'package:word_meaning/common/model/word_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:word_meaning/main.dart';

import '../../collection/collection_controller.dart';

class WordService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final AuthController authController = Get.find();
  Future<List<Word>> fetchWords() async {
    QuerySnapshot querySnapshot = await _firestore.collection(authController.userString.value).get();
    return querySnapshot.docs
        .map((doc) => Word.fromMap(doc.data() as Map<String, dynamic>, doc.id))
        .toList();
  }
}

List<Word> searchWords(List<Word> words, String query) {
  return words.where((word) {
    final wordLower = word.word.toLowerCase();
    // final meaningLower = word.meaning.toLowerCase();
    // final sentenceLower = word.sentence.toLowerCase();
    final searchLower = query.toLowerCase();

    return wordLower.contains(searchLower);
  }).toList();
}
