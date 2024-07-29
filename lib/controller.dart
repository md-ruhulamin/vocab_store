import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:word_meaning/common/collection_name.dart';
import 'package:word_meaning/common/model/word_model.dart';
import 'package:word_meaning/features/collection/collection_controller.dart';
import 'package:word_meaning/main.dart';

class WordController extends GetxController {
  RxInt indexforWord = 0.obs;
  RxInt indexformyword = 0.obs;
  RxList<Word> wordsList = <Word>[].obs;
  RxList<Word> mywordList = <Word>[].obs;
  String button1 = "Prev";
  String button2 = "Next";
  RxBool isFront = true.obs;
  Future<List<Word>> fetchAllWords() async {
    final QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('words2').get();
    List<Word> _words = [];
    _words = querySnapshot.docs.map((doc) {
      final id = doc.id;
      final data = doc.data() as Map<String, dynamic>;
      return Word.fromMap(data, id);
    }).toList();
    wordsList.value = _words;
    return wordsList;
  }

  Future<List<Word>> fetchAllWords2() async {
    final AuthController authController = Get.find();
    final QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection(authController.userString.value)
        .get();
    List<Word> _words = [];
    _words = querySnapshot.docs.map((doc) {
      final id = doc.id;
      final data = doc.data() as Map<String, dynamic>;
      return Word.fromMap(data, id);
    }).toList();
    mywordList.value = _words;
    return mywordList;
  }
}
