import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:word_meaning/common/model/word_model.dart';
import 'package:word_meaning/features/collection/collection_controller.dart';

// class IdiomController extends GetxController {
//   RxInt indexforIdom = 0.obs;
//   RxList<Word> idomsList = <Word>[].obs;
//   String button1 = "Prev";
//   String button2 = "Next";
//   RxBool isFront = true.obs;
//   RxBool isLoading = true.obs;
//   var words = <Word>[].obs;

//   var errorMessage = ''.obs;

//   @override
//   void onInit() {
//     fetchWords();
//     super.onInit();
//   }

//   Future<void> fetchWords() async {
//     try {
//       isLoading(true);
//       final firestore = FirebaseFirestore.instance;

//       List<Word> fetchedWords = [];

//       // Fetch idioms collection
//       QuerySnapshot idiomsSnapshot = await firestore.collection('idoms').get();
//       fetchedWords.addAll(idiomsSnapshot.docs
//           .map(
//               (doc) => Word.fromMap(doc.data() as Map<String, dynamic>, doc.id))
//           .toList());

//       // Fetch ruhulaminidiom collection
//       QuerySnapshot ruhulaminidiomSnapshot =
//           await firestore.collection('ruhulamin18701063idiom').get();
//       fetchedWords.addAll(ruhulaminidiomSnapshot.docs
//           .map(
//               (doc) => Word.fromMap(doc.data() as Map<String, dynamic>, doc.id))
//           .toList());

//       words.value = fetchedWords;
//     } catch (e) {
//       errorMessage(e.toString());
//     } finally {
//       isLoading(false);
//     }
//   }

//   Future<List<Word>> fetchAllIdoms2() async {
//     isLoading.value = true;
//     idomsList.value = [];
//     final QuerySnapshot querySnapshot =
//         await FirebaseFirestore.instance.collection('idoms').get();
//     List<Word> words1 = [];
//     words1 = querySnapshot.docs.map((doc) {
//       final id = doc.id;
//       final data = doc.data() as Map<String, dynamic>;
//       return Word.fromMap(data, id);
//     }).toList();

//     // final AuthController authController = Get.find();
//     // final QuerySnapshot querySnapshot1 = await FirebaseFirestore.instance
//     //     .collection('ruhulamin18701063idiom')
//     //     .get();
//     // List<Word> words2 = [];
//     // words2 = querySnapshot1.docs.map((doc) {
//     //   final id = doc.id;
//     //   final data = doc.data() as Map<String, dynamic>;
//     //   return Word.fromMap(data, id);
//     // }).toList();

//     words1.forEach((element) {
//       idomsList.add(element);
//     });
//     // words2.forEach((element) {
//     //   idomsList.add(element);
//     // });
//     print("All Call default List ${idomsList.length}");
//     isLoading.value = false;
//     return idomsList;
//   }
// }

class IdiomController extends GetxController {
  RxInt indexforDefaultIdiom = 0.obs;
  RxInt indexforMyIdom = 0.obs;
  RxList<Word> _defaultList = <Word>[].obs;
  RxList<Word> _myIdiomList = <Word>[].obs;
  String button1 = "Prev";
  String button2 = "Next";
  RxBool isFront = true.obs;
  List<Word> get myIdiomList => _myIdiomList.value;
  List<Word> get myDeafultIdiomList => _defaultList.value;
  set myIdiomList(List<Word> words) {
    _myIdiomList.value = words;
  }

  set myDeafultIdiomList(List<Word> words) {
    _defaultList.value = words;
  }

  @override
  void onInit() {
    fetchDefaultIdioms();
    fetchUserIdioms();
    super.onInit();
  }

  Future<List<Word>> fetchUserIdioms() async {
    final QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection(Get.put(AuthController()).userStringIdiom.value).get();
    List<Word> words = [];
    words = querySnapshot.docs.map((doc) {
      final id = doc.id;
      final data = doc.data() as Map<String, dynamic>;
      return Word.fromMap(data);
    }).toList();
    _myIdiomList.value = words;
    myIdiomList = words;
    return _myIdiomList.value;
  }

  Future<List<Word>> fetchDefaultIdioms() async {
    final QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('idoms')
        .get();
    List<Word> words = [];
    words = querySnapshot.docs.map((doc) {
      final id = doc.id;
      final data = doc.data() as Map<String, dynamic>;
      return Word.fromMap(data);
    }).toList();
    myDeafultIdiomList = words;
    return myIdiomList;
  }
}
