import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../homepage.dart';

class AuthController extends GetxController {
  var isLogged = false.obs;
  var userString = ''.obs;
  var userStringIdiom = ''.obs;

  Future<void> checkAuth() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedString = prefs.getString('user_collection');
    if (savedString != null) {
      userString.value = savedString;
      userStringIdiom.value = '${userString.value}idiom';
      isLogged.value = true;
    } else {
      isLogged.value = false;
    }
  }

  Future<void> saveUserString(String userString) async {
    this.userString.value = userString;
    userStringIdiom.value = '${userString}idiom';
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('user_collection', userString);
    isLogged.value = true;
  }

  Future<void> saveToFirebase(
      String userCollectionName, String userCode, int number) async {
    CollectionReference users =
        FirebaseFirestore.instance.collection('collectionList');
    userString.value = userCollectionName + userCode;
    QuerySnapshot querySnapshot =
        await users.where('user_collection', isEqualTo: userString.value).get();
    if (number == 2) {
      if (querySnapshot.docs.isEmpty) {
        Get.snackbar("Failed", "Please Correct Your Collection Name & Code",snackPosition: SnackPosition.BOTTOM);
      } else {
        saveUserString(userString.value);
        Get.offAll(HomePage());
        Get.snackbar('Congratulations', 'Welcome Again!!');
      }
    } else {
      await users.add({'user_collection': userString.value});
      saveUserString(userString.value);
      Get.snackbar('Success', 'String saved to Firebase');
      Get.offAll(HomePage());
    }

    // if (querySnapshot.docs.isEmpty) {
    //   // String does not exist, add it to Firebase
    //   await users.add({'user_collection': userString.value});
    //   saveUserString(userString.value);
    //   Get.snackbar('Success', 'String saved to Firebase');
    //   Get.offAll(HomePage());
    // } else {
    //   saveUserString(userString.value);
    //   Get.offAll(HomePage());
    //   Get.snackbar('Congratulations', 'Welcome Again!!');
    // }
  }

  Future<void> getUserStringFromFirebase() async {
    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection('collectionList');
    QuerySnapshot querySnapshot = await collectionReference.get();
    if (querySnapshot.docs.isNotEmpty) {
      userString.value = querySnapshot.docs.first['user_collection'];
      userStringIdiom.value = '${userString}idiom';
      //isLogged.value = true;
    } else {
      //   isLogged.value = false;
    }
  }
}
