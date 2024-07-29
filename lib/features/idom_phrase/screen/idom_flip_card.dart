// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/features/idom_phrase/controllers/idom_controller.dart';
import 'package:word_meaning/features/text_audio/controller.dart/screen/widget/card_Controller.dart';
import 'package:word_meaning/features/text_audio/controller.dart/screen/widget/flipcard.dart';

class IdomFlipCard extends StatefulWidget {
  @override
  _IdomFlipCardState createState() => _IdomFlipCardState();
}

class _IdomFlipCardState extends State<IdomFlipCard>
    with SingleTickerProviderStateMixin {
  final idomcontroller = Get.put(IdomController());

  @override
  void dispose() {
    super.dispose();
    idomcontroller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Obx(
          () => idomcontroller.idomsList.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : Container(
                  width: 200,
                  child: Text(
                    idomcontroller
                        .idomsList[idomcontroller.indexforIdom.value].word,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
        )),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => idomcontroller.idomsList.isEmpty
                      ? const Center(child: CircularProgressIndicator())
                      : FlipCard(
                          word: idomcontroller
                              .idomsList[idomcontroller.indexforIdom.value]),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 40,
                ),
                Obx(() => IdomControllerButton(
                      index: idomcontroller.indexforIdom.value,
                      controller: idomcontroller,
                    ))
              ],
            )));
  }
}
