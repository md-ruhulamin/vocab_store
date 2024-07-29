import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../homepage.dart';
import '../collection/collectionPage.dart';
import '../collection/collection_controller.dart';

class InitialPage extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: authController.checkAuth(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else {
          return authController.isLogged.value ? HomePage() : AuthPage();
        }
      },
    );
  }
}
