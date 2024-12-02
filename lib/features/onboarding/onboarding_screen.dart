import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:word_meaning/features/text_audio/controller.dart/screen/widget/custom_text.dart';

import '../collection/collection_controller.dart';
import '../initial_page/initialpage.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  void initState() {
    super.initState();
    Get.put(AuthController());
  }

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
// “Word by Word, We Grow.”\
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
                  Get.off(InitialPage());
                },
                child: CustomButton(text: "Let's Practice"))
          ],
        ),
      )),
    );
  }
}
