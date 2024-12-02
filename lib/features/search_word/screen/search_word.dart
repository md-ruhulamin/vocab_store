import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/common/model/word_model.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/features/collection/collection_controller.dart';
import 'package:word_meaning/features/my_dictionary/screen/mydictonaryscreen.dart';
import 'package:word_meaning/features/search_word/controller/search-controller.dart';
import 'package:word_meaning/homepage.dart';
import 'package:word_meaning/route/routes.dart';
import '../../../utils/color.dart';

class WordSearchScreen extends StatefulWidget {
  @override
  _WordSearchScreenState createState() => _WordSearchScreenState();
}

class _WordSearchScreenState extends State<WordSearchScreen> with RouteAware {
  ScrollController _scrollController = ScrollController();

  double _scrollPosition = 0;
  late Future<List<Word>> futureWords;
  List<Word> allWords = [];
  List<Word> filteredWords = [];
  String query = '';
  late WordController wordController;
  final AuthController authController = Get.put(AuthController());
  @override
  void initState() {
    wordController = Get.put(WordController());
    super.initState();
    futureWords = WordService().fetchWords(authController.userString.value);
    futureWords.then((words) {
      setState(() {
        _scrollController = ScrollController();
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
  void didPopNext() {
    setState(() {
      futureWords = WordService().fetchWords(authController.userString.value);
    });
  }

  int selectWordIndexforIdiom(String word) {
    int count = -1;
    for (int i = 0; i < allWords.length; i++) {
      if (allWords[i].word == word) {
        return count + 1;
      } else {
        count++;
      }
    }
    return count;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                : Scrollbar(
                    radius: Radius.circular(10),
                    interactive: true,
                    thickness: 50,
                    thumbVisibility: true,
                    controller:
                        _scrollController, // Attach ScrollController to the Scrollbar
                    child: ListView.builder(
                      controller:
                          _scrollController, // Attach the same controller to ListView
                      itemCount: filteredWords.length,
                      itemBuilder: (context, index) {
                        final word = filteredWords[index];
                        return CustomListItemView(
                          index: index,
                          word: word,
                          onPressed: () {
                            index = selectWordIndexforIdiom(word.word);
                            wordController.indexformyword.value =
                                allWords.length - 1 - index;
                            Get.to(MyDictionaryCard());
                          },
                        );
                      },
                    ),
                  );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Get.toNamed(
            RouteHelper.getAddNewWordPage(),
            arguments: {
              'from': 'Word',
            },
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.0),
        ),
      ),
      
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          preferredSize: const Size.fromHeight(40.0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 5, left: 5, right: 5),
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
    );
  }
}

class CustomListItemView extends StatelessWidget {
  const CustomListItemView({
    super.key,
    required this.word,
    required this.onPressed,
    required this.index,
  });
  final VoidCallback onPressed;

  final Word word;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            color: listColor.withOpacity(0.8),
            borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          onTap: onPressed,
          leading: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(100)),
            height: 45,
            width: 45,
            child: FittedBox(
              child: Text(
                '${index + 1}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 15, fontFamily: 'Cera Pro', color: Colors.white),
              ),
            ),
          ),
          title: Text(
            '${word.word.capitalizeFirst}',
            style: const TextStyle(
                fontSize: 18,
                fontFamily: 'Cera Pro',
                fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            ' ${word.meaning.capitalizeFirst}',
            maxLines: 1,
            style: const TextStyle(fontSize: 15, color: Colors.grey),
          ),
        ));
  }
}
