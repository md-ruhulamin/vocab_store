import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:word_meaning/constrains/data.dart';

class WordController extends GetxController {
  RxInt indexforWord = 0.obs;
  RxInt indexforIdom = 0.obs;
  RxInt indexformyword = 0.obs;

  RxList<Word> wordsList = <Word>[].obs;
  RxList<Word> idomsList = <Word>[].obs;
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
    final QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('myword').get();
    List<Word> _words = [];
    _words = querySnapshot.docs.map((doc) {
      final id = doc.id;
      final data = doc.data() as Map<String, dynamic>;
      return Word.fromMap(data, id);
    }).toList();
    mywordList.value = _words;
    return mywordList;
  }

  void display() {
  }

  Future<List<Word>> fetchAllIdoms() async {
    final QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('idoms').get();
    List<Word> _words = [];
    _words = querySnapshot.docs.map((doc) {
      final id = doc.id;
      final data = doc.data() as Map<String, dynamic>;
      return Word.fromMap(data, id);
    }).toList();
    idomsList.value = _words;
    return idomsList;
  }

  // Future<List<Word>> fetchmyword() async {
  //   final QuerySnapshot querySnapshot =
  //       await FirebaseFirestore.instance.collection('myword').get();
  //   List<Word> _words = [];
  //   _words = querySnapshot.docs.map((doc) {
  //     final id = doc.id;
  //     final data = doc.data() as Map<String, dynamic>;
  //     return Word.fromMap(data, id);
  //   }).toList();
  //   print(_words);
  //   mywordList.value = _words;
  //   print("This function is working" + mywordList.length.toString());
  //  // print(mywordList.value);
  //   return mywordList;
  // }
}
