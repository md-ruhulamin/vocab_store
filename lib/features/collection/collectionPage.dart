import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/common/widget/custom_text.dart';
import 'package:word_meaning/features/collection/collection_controller.dart';
import 'package:word_meaning/features/text_audio/controller.dart/screen/widget/custom_text.dart';

class AuthPage extends StatefulWidget {
  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final AuthController authController = Get.find();

  final TextEditingController textController = TextEditingController();
  final TextEditingController codeController = TextEditingController();
  int _selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enjoy Your Personal Dictionary'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  maxLines: 1,
                  style: TextStyle(fontFamily: "Cera Pro"),
                  controller: textController,
                  decoration: const InputDecoration(
                    label: Text("Enter Your Collection Name"),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  maxLines: 1,
                  style: TextStyle(fontFamily: "Cera Pro"),
                  controller: codeController,
                  decoration: const InputDecoration(
                    label: Text("Enter a Collection Code"),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                RadioListTile<int>(
                  title: CustomText(
                    text: 'New Collection',
                    fontSize: 17,
                  ),
                  value: 1,
                  groupValue: _selectedValue,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: CustomText(
                    text: 'Already Have a Collection',
                    fontSize: 17,
                  ),
                  value: 2,
                  groupValue: _selectedValue,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    if (textController.text.trim().isNotEmpty &&
                        codeController.text.trim().isNotEmpty) {
                      if (textController.text.trim().length >= 6 &&
                          codeController.text.trim().length >= 6) {
                        authController.saveToFirebase(textController.text.trim(),
                            codeController.text.trim(),_selectedValue);
                      } else {
                        Get.snackbar(
                            'Error', "Name and Code will minimum 6 char.",
                            snackPosition: SnackPosition.BOTTOM);
                      }
                    } else {
                      Get.snackbar('Error', "Enter Fillup the Form",
                          snackPosition: SnackPosition.BOTTOM);
                    }
                  },
                  child: CustomButton(
                    text: 'Save Collection Name',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
