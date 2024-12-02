// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/features/idom_phrase/controllers/idom_controller.dart';
import 'package:word_meaning/features/text_audio/controller.dart/screen/widget/appbarwidget.dart';
import 'package:word_meaning/features/text_audio/controller.dart/screen/widget/card_Controller.dart';
import 'package:word_meaning/features/text_audio/controller.dart/screen/widget/flipcard.dart';

class IdiomFlipCard extends StatefulWidget {
  @override
  _IdiomFlipCardState createState() => _IdiomFlipCardState();
}
class _IdiomFlipCardState extends State<IdiomFlipCard>
    with SingleTickerProviderStateMixin {
  final idiomcontroller = Get.put(IdiomController());
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Obx(() => idiomcontroller.myDeafultIdiomList.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : Container(
                    width: 200,
                    child: Text(
                      idiomcontroller
                          .myDeafultIdiomList[
                              idiomcontroller.indexforDefaultIdiom.value]
                          .word,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => idiomcontroller.myDeafultIdiomList.isEmpty
                      ? const Center(child: CircularProgressIndicator())
                      : FlipCard(
                          word: idiomcontroller.myDeafultIdiomList[
                              idiomcontroller.indexforDefaultIdiom.value]),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 40,
                ),
                Obx(() => IdomControllerButton(
                      index: idiomcontroller.indexforDefaultIdiom.value,
                      controller: idiomcontroller,
                    ))
              ],
            )));
  }
}
