import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/features/text_audio/view/audio_view.dart';
import 'package:word_meaning/utils/color.dart';
import 'package:word_meaning/data/data.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/features/text_audio/controller.dart/screen/operation/update.dart';
import 'package:word_meaning/features/text_audio/controller.dart/screen/widget/custom_text.dart';

class WordFlipCard extends StatefulWidget {
  @override
  _WordFlipCardState createState() => _WordFlipCardState();
}

class _WordFlipCardState extends State<WordFlipCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  TextEditingController indexat = TextEditingController();
  late Animation<double> _animation;
  final wordcontroller = Get.put(WordController());
  @override
  void initState() {
    super.initState();
    wordcontroller.fetchAllWords2();
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
            wordcontroller.isFront.value = !wordcontroller.isFront.value;
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
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "  ${wordcontroller.indexforWord.value + 1}  ${wordsList[wordcontroller.indexforWord.value].word}",
                    ),
                    IconButton(
                        onPressed: () {
                          print("Clicked");
                          Get.to(UpdateWordScreen(
                            index:
                                wordsList[wordcontroller.indexforWord.value].id,
                            word: wordsList[wordcontroller.indexforWord.value],
                          ));
                        },
                        icon: const Icon(Icons.edit))
                  ],
                ))),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Container(
                //         width: 200,
                //         height: 30,
                //         child: Expanded(
                //             child: TextField(
                //           keyboardType: TextInputType.number,
                //           decoration: InputDecoration(),
                //           controller: indexat,
                //         ))),
                //     TextButton(
                //         onPressed: () {
                //           int i = int.parse(indexat.text) - 1;
                //           if (wordsList.length <= i || i < 0) {
                //             Get.snackbar("Invalid Index",
                //                 "You have almost ${wordsList.length} words");
                //           } else {
                //             wordcontroller.indexforWord.value = i;
                //           }
                //         },
                //         child: Text("Start at")),
                //   ],
                // ),
                // SizedBox(
                //   height: 10,
                // ),
                Obx(
                  () => Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(_controller.value * 3.141),
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        color: wordcontroller.isFront.value
                            ? frontColor
                            : backgroundColor,
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, blurRadius: 10)
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Obx(
                        () => wordcontroller.isFront.value
                            ? Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        wordsList[wordcontroller
                                                .indexforWord.value]
                                            .word,
                                        style: const TextStyle(
                                            fontSize: 28, color: Colors.white),
                                      ),
                                      SpeakTheWord(
                                        text: wordsList[wordcontroller
                                                .indexforWord.value]
                                            .word,
                                      ),
                                      
                                    ],
                                  ),
                                  Text(
                                    wordsList[wordcontroller.indexforWord.value]
                                        .sentence,
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ],
                              )
                            : Text(
                                wordsList[wordcontroller.indexforWord.value]
                                    .meaning,
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                      )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: _flipCard,
                    child: const Image(
                        height: 45,
                        image: AssetImage("assets/icons/flip.png"))),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        if (wordcontroller.indexforWord.value > 0) {
                          wordcontroller.indexforWord.value -= 1;
                          wordcontroller.isFront.value = true;
                        }
                      },
                      child: CustomButton(
                        text: "< - Prev",
                      ),
                    ),
                    // IconButton(
                    //     onPressed: () {
                    //       addwordtofirebasr();
                    //     },
                    //     icon: Icon(Icons.upload)),
                    InkWell(
                        onTap: () {
                          if (wordcontroller.indexforWord.value <
                              wordsList.length - 1) {
                            wordcontroller.indexforWord.value += 1;
                            wordcontroller.isFront.value = true;
                          }
                        },
                        child: Visibility(
                          //   visible: wordcontroller.isFront.value,
                          child: CustomButton(
                            text: " Next - >",
                          ),
                        )),
                  ],
                )
              ],
            )));
  }

  void addwordtofirebasr() async {
    final CollectionReference words =
        FirebaseFirestore.instance.collection('myword');
    int index = wordcontroller.mywordList.last.id;
    await words.doc((index).toString()).set({
      'id': index + 1,
      'sentence': wordsList[index].sentence,
      'word': wordsList[index].word,
      'meaning': wordsList[index].meaning
    }).then((value) =>
        Get.snackbar("Success", "${wordsList[index].word} added Successfully"));
  }
}
