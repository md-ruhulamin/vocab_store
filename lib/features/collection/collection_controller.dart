import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../homepage.dart';

class AuthController extends GetxController {
  var isLogged = false.obs;
  var userString = ''.obs;

  Future<void> checkAuth() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedString = prefs.getString('user_collection');
    if (savedString != null) {
      userString.value = savedString;
      isLogged.value = true;
    } else {
      isLogged.value = false;
    }
  }

  Future<void> saveUserString(String userString) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('user_collection', userString);
    this.userString.value = userString;
    isLogged.value = true;
  }

  Future<void> saveToFirebase(
      String userCollectionName, String userCode) async {
    CollectionReference users =
        FirebaseFirestore.instance.collection('collectionList');
    String userString = userCollectionName + userCode;
    QuerySnapshot querySnapshot =
        await users.where('user_collection', isEqualTo: userString).get();
    print(querySnapshot.docs.isEmpty);
    if (querySnapshot.docs.isEmpty) {
      // String does not exist, add it to Firebase
      await users.add({'user_collection': userString});
      saveUserString(userString);

      Get.snackbar('Success', 'String saved to Firebase');
      Get.offAll(HomePage());
    } else {
      saveUserString(userString);
      Get.offAll(HomePage());

      Get.snackbar('Congratulations', 'Welcome Again!!');
    }
  }

  Future<void> getUserStringFromFirebase() async {
    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection('collectionList');
    QuerySnapshot querySnapshot = await collectionReference.get();
    if (querySnapshot.docs.isNotEmpty) {
      userString.value = querySnapshot.docs.first['user_collection'];
      //isLogged.value = true;
    } else {
      //   isLogged.value = false;
    }
  }
}
