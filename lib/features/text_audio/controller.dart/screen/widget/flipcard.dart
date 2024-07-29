import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/common/model/word_model.dart';
import 'package:word_meaning/features/text_audio/controller.dart/audio_controller.dart';
import 'package:word_meaning/features/text_audio/view/audio_view.dart';
import 'package:word_meaning/utils/color.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/data/data.dart';

class FlipCard extends StatefulWidget {
  Word word;
  FlipCard({
    Key? key,
    required this.word,
  });

  @override
  State<FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;
  var idomcontroller;
  final wordController = Get.put(WordController());
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            wordController.isFront.value = !wordController.isFront.value;
            _controller.reset();
          });
        }
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _flipCard() {
    if (_controller.isCompleted || _controller.isDismissed) {
      //   wordController.isFront.value = !wordController.isFront.value;
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(_controller.value * 3.141),
          alignment: Alignment.center,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              color: wordController.isFront.value ? frontColor : backgroundColor,
              boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 10)],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
                child: Obx(
              () => wordController.isFront.value
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              widget.word.word,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 26, color: Colors.white),
                            ),
                            SpeakTheWord(text:widget.word.word ),
                          ],
                        ),
                        Text(
                          widget.word.sentence,
                          style: const TextStyle(
                              fontSize: 16, color: Colors.white),
                        ),
                      ],
                    )
                  : Text(
                      widget.word.meaning,
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
            )),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
            onTap: _flipCard,
            child: const Image(
                height: 45, image: AssetImage("assets/icons/flip.png"))),
      ],
    );
  }
}
