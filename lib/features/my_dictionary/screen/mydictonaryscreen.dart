// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/features/text_audio/controller.dart/screen/widget/appbarwidget.dart';
import 'package:word_meaning/features/text_audio/controller.dart/screen/widget/card_Controller.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/features/text_audio/controller.dart/screen/widget/flipcard.dart';

class MyDictionaryCard extends StatefulWidget {
  @override
  _MyDictionaryCardState createState() => _MyDictionaryCardState();
}

class _MyDictionaryCardState extends State<MyDictionaryCard>
    with SingleTickerProviderStateMixin {
  final mywordcontroller = Get.put(WordController());

  @override
  void initState() {
    super.initState();
    mywordcontroller.fetchAllWords();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Obx(() => mywordcontroller.mywordList.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : AppBarWidget(
                    from: 'MyWord',
                    index: mywordcontroller.indexformyword.value,
                    currword: mywordcontroller
                        .mywordList[mywordcontroller.indexformyword.value],
                    currlength: mywordcontroller.indexformyword.value + 1,
                  ))),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => mywordcontroller.mywordList.isEmpty
                      ? const Center(child: CircularProgressIndicator())
                      : FlipCard(
                          word: mywordcontroller.mywordList[
                              mywordcontroller.indexformyword.value]),
                ),
                const SizedBox(
                  height: 15,
                ),
                Obx(() => MyWordControllerButton(
                      index: mywordcontroller.indexformyword.value,
                      controller: mywordcontroller,
                    ))
              ],
            )));
  }
}
