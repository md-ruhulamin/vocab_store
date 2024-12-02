import 'package:get/get.dart';

class TableController extends GetxController {
  RxList _tableList = [].obs;

  void set tableList(List list) {
    _tableList.value = list;
  }

List get tableList=>_tableList;

}
