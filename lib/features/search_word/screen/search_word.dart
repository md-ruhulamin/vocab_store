import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/common/model/word_model.dart';
import 'package:word_meaning/common/style/color.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/features/my_dictionary/screen/mydictonaryscreen.dart';
import 'package:word_meaning/features/search_word/controller/search-controller.dart';
import 'package:word_meaning/homepage.dart';
import 'package:word_meaning/route/routes.dart';

class WordSearchScreen extends StatefulWidget {
  @override
  _WordSearchScreenState createState() => _WordSearchScreenState();
}

class _WordSearchScreenState extends State<WordSearchScreen> {
  late Future<List<Word>> futureWords;
  List<Word> allWords = [];
  List<Word> filteredWords = [];
  String query = '';
 late WordController wordController;
  @override
  void initState() {
  wordController = Get.put(WordController());
    super.initState();
    futureWords = WordService().fetchWords();
    futureWords.then((words) {
      setState(() {
        allWords = words;
        filteredWords = words;
      });
    });
  }

  void updateSearchQuery(String newQuery) {
    setState(() {
      query = newQuery;
      filteredWords = searchWords(allWords, query);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(RouteHelper.getAddNewWordPage());
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title:Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: updateSearchQuery,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8),
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: FutureBuilder<List<Word>>(
        future: futureWords,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return filteredWords.length == 0
                ? const Center(child: Text("No Word Found"))
                : ListView.builder(
                    itemCount: filteredWords.length,
                    itemBuilder: (context, index) {
                      final word = filteredWords[index];
                      return Container(
                          margin: const EdgeInsets.all(2),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              color: listColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: GestureDetector(
                            onTap: () {
                              wordController.indexformyword.value = index;
                              print("MY word 2");
                             Get.to(MyDictionaryCard());
                            },
                            child: Text(
                              word.word,
                              style: const TextStyle(fontSize: 18),
                            ),
                          ));
                    },
                  );
          }
        },
      ),
    );
  }
}
