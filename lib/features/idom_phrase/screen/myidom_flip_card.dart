// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/features/idom_phrase/controllers/idom_controller.dart';
import 'package:word_meaning/features/text_audio/controller.dart/screen/widget/appbarwidget.dart';
import 'package:word_meaning/features/text_audio/controller.dart/screen/widget/card_Controller.dart';
import 'package:word_meaning/features/text_audio/controller.dart/screen/widget/flipcard.dart';

class MyIdiomFlipCard extends StatefulWidget {
  @override
  _MyIdiomFlipCardState createState() => _MyIdiomFlipCardState();
}

class _MyIdiomFlipCardState extends State<MyIdiomFlipCard>
    with SingleTickerProviderStateMixin, RouteAware {
  final idiomcontroller = Get.put(IdiomController());
  @override
  void initState() {
    super.initState();
  idiomcontroller.fetchUserIdioms();
  }
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didPopNext() {
    setState(() {
      idiomcontroller.fetchUserIdioms();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Obx(() => idiomcontroller.myIdiomList.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : AppBarWidget(
                    from: 'Idiom',
                    index: idiomcontroller.indexforMyIdom.value,
                    currword: idiomcontroller
                        .myIdiomList[idiomcontroller.indexforMyIdom.value],
                    currlength: idiomcontroller.indexforMyIdom.value + 1,
                  ))),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => idiomcontroller.myIdiomList.isEmpty
                      ? const Center(child: CircularProgressIndicator())
                      : FlipCard(
                          word: idiomcontroller.myIdiomList[
                              idiomcontroller.indexforMyIdom.value]),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 40,
                ),
                Obx(() => MyIdomControllerButton(
                      index: idiomcontroller.indexforMyIdom.value,
                      controller: idiomcontroller,
                    ))
              ],
            )));
  }
}
