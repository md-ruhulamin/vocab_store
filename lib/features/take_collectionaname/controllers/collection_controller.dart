import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:word_meaning/features/take_collectionaname/view/take_collectionname_view.dart';

class CollectionController extends GetxController {
  @override
  void initState() {

    _getCollectionName();
  }

  RxString collectionName = RxString("");
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<void> saveCollectionName(String CollectionName) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString("COLLECTION_NAME", CollectionName).then(
        (value) => Get.snackbar("Success", "Make Your Personal Dictionary"));
  }

  Future<String?> getCollectionName() async {
    final SharedPreferences prefs = await _prefs;
    String? collecttion = prefs.getString("COLLECTION_NAME");
    return collecttion ?? "nothing ";
  }

  Future<void> _getCollectionName() async {
    String? name = await getCollectionName();
    collectionName.value = name ?? "nothing";

    print(name);
  }
}
