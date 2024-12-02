import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';

class TTSController extends GetxController {
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setSpeechRate(0.5); // Adjust the rate as needed
    await flutterTts.setVolume(0.6);
    await flutterTts.setPitch(1.0);
    await flutterTts.speak(text);
  }
}
