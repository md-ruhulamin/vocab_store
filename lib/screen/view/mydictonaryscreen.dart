// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/screen/widget/appbarwidget.dart';
import 'package:word_meaning/screen/widget/card_Controller.dart';

import 'package:word_meaning/controller.dart';
import 'package:word_meaning/screen/widget/flipcard.dart';

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
    mywordcontroller.fetchAllWords2();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Obx(() => mywordcontroller.mywordList.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : AppBarWidget(
                    index: mywordcontroller.indexformyword.value,
                    currword: mywordcontroller
                        .mywordList[mywordcontroller.indexformyword.value],
                    currlength: mywordcontroller.indexformyword.value + 1,
                  
                  ))),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => mywordcontroller.mywordList.isEmpty
                      ? Center(child: CircularProgressIndicator())
                      : FlipCard(
                          word: mywordcontroller.mywordList[
                              mywordcontroller.indexformyword.value]),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 40,
                ),
                Obx(() => MyWordControllerButton(
                      index: mywordcontroller.indexformyword.value,
                      controller: mywordcontroller,
                    ))
              ],
            )));
  }
}
