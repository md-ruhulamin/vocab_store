import 'package:get/get.dart';
import 'package:word_meaning/common/model/word_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../collection/collection_controller.dart';
class WordService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final AuthController authController = Get.find();
  Future<List<Word>> fetchWords(String collectionName) async {
    QuerySnapshot querySnapshot =
        await _firestore.collection(collectionName).get();
    return querySnapshot.docs.reversed
        .map((doc) => Word.fromMap(doc.data() as Map<String, dynamic>))
        .toList();
  }
}
List<Word> searchWords(List<Word> words, String query) {
  return words.where((word) {
    final wordLower = word.word.toLowerCase();
    final searchLower = query.toLowerCase();
    return wordLower.contains(searchLower);
  }).toList();
}




