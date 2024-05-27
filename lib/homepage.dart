import 'package:flutter/material.dart';
import 'package:word_meaning/add_in_fireabse.dart';
import 'package:word_meaning/screen/operation/addword.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/screen/widget/custom_text.dart';
import 'package:word_meaning/screen/view/idom_flip_card.dart';
import 'package:word_meaning/screen/view/mydictonaryscreen.dart';
import 'package:word_meaning/screen/view/word_flip_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const double size = 150;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WordController().fetchAllIdoms();
     WordController().fetchAllWords();
    WordController().fetchAllWords2();
 //   WordController().display();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text(
          'Select what you want to learn',
          style: TextStyle(color: Colors.white, fontFamily: 'Cera Pro'),
        ),
      ),
      body: Center(
        child: Wrap(runSpacing: 10, spacing: 10, children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => WordFlipCard())));
            },
            child: SizedBox(
                height: HomePage.size,
                width: HomePage.size,
                child: CustomButton(text: "Word Meaning")),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => IdomFlipCard())));
            },
            child: SizedBox(
                height: HomePage.size,
                width: HomePage.size,
                child: CustomButton(text: "Idom and Phrases")),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => MyDictionaryCard())));
            },
            child: SizedBox(
                height: HomePage.size,
                width: HomePage.size,
                child: CustomButton(text: "See You Dictonary")),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => AddNewWord())));
            },
            child: SizedBox(
                height: HomePage.size,
                width: HomePage.size,
                child: CustomButton(text: "Add Alternative")),
          ),
        ]),
      ),
    );
  }
}
