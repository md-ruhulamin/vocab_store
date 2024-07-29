// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/common/style/color.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/homepage.dart';
import 'package:word_meaning/route/routes.dart';
import 'package:word_meaning/features/my_dictionary/screen/mydictonaryscreen.dart';

class MyWordList extends StatefulWidget {
  const MyWordList({super.key});

  @override
  State<MyWordList> createState() => _IdomListState();
}

class _IdomListState extends State<MyWordList> {
  late WordController wordController;
  void initState() {
    super.initState();
    wordController = Get.put(WordController());
    wordController.fetchAllWords2();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("My Vocab List"),
            InkWell(
              onTap: () {
                Get.offAll(HomePage());
              },
              child: Icon(Icons.home),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(RouteHelper.getAddNewWordPage());
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: SizedBox(
            height: 800,
            child: Obx(
              () => ListView.builder(
                  itemCount: wordController.mywordList.length,
                  itemBuilder: (context, index) {
                    return wordController.mywordList.isNotEmpty
                        ? Container(
                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                color: listColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: GestureDetector(
                              onTap: () {
                                print("MY word 1 ");
                                wordController.indexformyword.value = index;
                                print("MY word 2");
                                Get.to(MyDictionaryCard());
                              },
                              child: Text(
                                wordController.mywordList[index].word,
                                style: TextStyle(fontSize: 18),
                              ),
                            ))
                        : Text(" No Data Found");
                  }),
            )),
      ),
    );
  }
}
