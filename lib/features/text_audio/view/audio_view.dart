
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/features/text_audio/controller.dart/audio_controller.dart';

class SpeakTheWord extends StatelessWidget {
  
  const SpeakTheWord({
    super.key,
    required this.text,
  
  });

  final String  text;


  @override
  Widget build(BuildContext context) {
      final TTSController ttsController = Get.put(TTSController());
    return ElevatedButton(
      onPressed: () {
        ttsController.speak(text);
      },
      child: const Image(
        image: AssetImage("assets/icons/speaker.png"),
        height: 30,
        width: 30,
        color: Colors.white,
      ),
    );
  }
}
