import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:word_meaning/features/text_audio/controller.dart/screen/widget/custom_text.dart';
import 'package:word_meaning/main.dart';

import '../initial_page/initialpage.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

//           Unlock the World of Words.”
// “Expand Your Lexicon.”
// “Word by Word, We Grow.”

          children: [
            const Text("Expand Your Lexicon Discover Learn and Remember.",
                style: TextStyle(fontSize: 23)),
            //     SizedBox(height: 10,),
            Image.asset(
              "assets/icons/icon.png",
              height: 300,
            ),

            InkWell(
                onTap: () {
                  Get.to(InitialPage());
                },
                child: CustomButton(text: "Let's Practice"))
          ],
        ),
      )),
    );
  }
}
