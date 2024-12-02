import 'package:flutter/material.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/features/idom_phrase/controllers/idom_controller.dart';
import 'package:word_meaning/features/text_audio/controller.dart/screen/widget/custom_text.dart';


class MyIdomControllerButton extends StatelessWidget {
  MyIdomControllerButton(
      {Key? key, required this.controller, required this.index})
      : super(key: key);
  int index;
  final IdiomController controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            //  print(idomcontroller.indexforIdom);
            if (controller.indexforMyIdom.value > 0) {
              controller.indexforMyIdom.value -= 1;
              controller.isFront.value = true;
            }
          },
          child: CustomButton(
            text: "< - Prev ",
          ),
        ),
        InkWell(
            onTap: () {
              //   print(wordcontroller.indexforIdom);

              if (controller.indexforMyIdom.value <
                  controller.myIdiomList.length - 1) {


                    
                controller.indexforMyIdom.value =  controller.indexforMyIdom.value + 1;
                controller.isFront.value = true;
              }
            },
            child: Visibility(
              //   visible: wordcontroller.isFront.value,
              child: CustomButton(
                text: " Next - >",
              ),
            )),
      ],
    );
  }
}
class IdomControllerButton extends StatelessWidget {
  IdomControllerButton(
      {Key? key, required this.controller, required this.index})
      : super(key: key);
  int index;
  final IdiomController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            //  print(idomcontroller.indexforIdom);
            if (controller.indexforDefaultIdiom.value > 0) {
              controller.indexforDefaultIdiom.value -= 1;
              controller.isFront.value = true;
            }
          },
          child: CustomButton(
            text: "< - Prev ",
          ),
        ),
        InkWell(
            onTap: () {
              //   print(wordcontroller.indexforIdom);

              if (controller.indexforDefaultIdiom.value <
                  controller.myDeafultIdiomList.length - 1) {               
                controller.indexforDefaultIdiom.value =  controller.indexforDefaultIdiom.value + 1;
                controller.isFront.value = true;
              }
            },
            child: Visibility(
              //   visible: wordcontroller.isFront.value,
              child: CustomButton(
                text: " Next - >",
              ),
            )),
      ],
    );
  }
}

class WordControllerButton extends StatelessWidget {
  WordControllerButton(
      {Key? key, required this.controller, required this.index})
      : super(key: key);
  int index;
  final WordController controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
           print(controller.wordsList.length);
            if (controller.indexforWord.value > 0) {
              controller.indexforWord.value -= 1;
              controller.isFront.value = true;
            }
          },
          child: CustomButton(
            text: "< - Prev ",
          ),
        ),
        InkWell(
            onTap: () {
              //   print(wordcontroller.indexforIdom);

              if (controller.indexforWord.value <
                  controller.wordsList.length - 1) {
                controller.indexforWord.value += 1;
                controller.isFront.value = true;
              }
            },
            child: Visibility(
              //   visible: wordcontroller.isFront.value,
              child: CustomButton(
                text: " Next - >",
              ),
            )),
      ],
    );
  }
}

class MyWordControllerButton extends StatelessWidget {
 MyWordControllerButton(
      {Key? key, required this.controller, required this.index})
      : super(key: key);
  int index;
  final WordController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            //  print(idomcontroller.indexforIdom);
            if (controller.indexformyword.value > 0) {
              controller.indexformyword.value -= 1;
              controller.isFront.value = true;
            }
          },
          child: CustomButton(
            text: "< - Prev ",
          ),
        ),
        InkWell(
            onTap: () {
              //   print(wordcontroller.indexforIdom);

              if (controller.indexformyword.value <
                  controller.mywordList.length - 1) {
                controller.indexformyword.value += 1;
                controller.isFront.value = true;
              }
            },
            child: Visibility(
              //   visible: wordcontroller.isFront.value,
              child: CustomButton(
                text: " Next - >",
              ),
            )),
      ],
    );
  }
}
