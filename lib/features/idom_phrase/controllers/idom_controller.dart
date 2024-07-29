import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:word_meaning/common/model/word_model.dart';

class IdomController extends GetxController{
  RxInt indexforIdom = 0.obs;
  RxList<Word> idomsList = <Word>[].obs;
  String button1 = "Prev";
  String button2 = "Next";
  RxBool isFront = true.obs;

 Future<List<Word>> fetchAllIdoms() async {
    final QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('idoms').get();
    List<Word> words = [];
    words = querySnapshot.docs.map((doc) {
      final id = doc.id;
      final data = doc.data() as Map<String, dynamic>;
      return Word.fromMap(data, id);
    }).toList();
    idomsList.value = words;
    print(idomsList.length);
    return idomsList;
  }


}