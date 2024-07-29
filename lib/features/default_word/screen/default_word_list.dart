// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/common/model/word_model.dart';
import 'package:word_meaning/common/style/color.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/data/data.dart';
import 'package:word_meaning/route/routes.dart';
import 'package:word_meaning/features/default_word/screen/word_flip_card.dart';

class WordList extends StatefulWidget {
  const WordList({super.key});

  @override
  State<WordList> createState() => _IdomListState();
}

class _IdomListState extends State<WordList> {
  late WordController wordController;
  void initState() {
    super.initState();
    wordController = Get.put(WordController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Vocab List"),
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
        child: ListView.builder(
            itemCount: wordsList.length,
            itemBuilder: (context, index) {
              wordsList.sort((a, b) => a.word.compareTo(b.word));
              return Container(
                  margin: EdgeInsets.all(2),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: listColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: GestureDetector(
                    onTap: () {
                      wordController.indexforWord.value = index;
                      Get.to(WordFlipCard());
                    },
                    child: Text(
                      "${index + 1} ${wordsList[index].word}",
                      style: TextStyle(fontSize: 18),
                    ),
                  ));
            }),
      )),
    );
  }
}
