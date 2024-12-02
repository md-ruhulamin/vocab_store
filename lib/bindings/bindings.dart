import 'package:get/get.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/features/collection/collection_controller.dart';
import 'package:word_meaning/features/idom_phrase/controllers/idom_controller.dart';
import 'package:word_meaning/features/search_meaning/screen/search_meaning_view.dart';
import 'package:word_meaning/features/take_collectionaname/controllers/collection_controller.dart';

class WordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IdiomController>(() => IdiomController());
    Get.lazyPut<WordController>(() => WordController());
    Get.lazyPut<CollectionController>(() => CollectionController());
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
