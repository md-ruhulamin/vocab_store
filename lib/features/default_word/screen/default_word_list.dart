// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/common/model/word_model.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/data/data.dart';
import 'package:word_meaning/features/collection/collection_controller.dart';
import 'package:word_meaning/features/search_word/controller/search-controller.dart';
import 'package:word_meaning/homepage.dart';
import 'package:word_meaning/route/routes.dart';
import 'package:word_meaning/features/default_word/screen/word_flip_card.dart';
import '../../search_word/screen/search_word.dart';

// class WordList extends StatefulWidget {
//   const WordList({super.key});

//   @override
//   State<WordList> createState() => _IdomListState();
// }

// class _IdomListState extends State<WordList> {
//   late WordController wordController;
//   final ScrollController _scrollController = ScrollController();
//   double _scrollPosition = 0;
//   @override
//   void initState() {
//     super.initState();
//     wordController = Get.put(WordController());
//     _scrollController.addListener(() {
//       setState(() {
//         _scrollPosition = _scrollController.position.pixels /
//             _scrollController.position.maxScrollExtent;
//       });
//     });
//   }

//   void _onVerticalDragUpdate(DragUpdateDetails details) {
//     double newPosition = _scrollController.position.maxScrollExtent *
//         (details.localPosition.dy / context.size!.height);

//     newPosition =
//         newPosition.clamp(0.0, _scrollController.position.maxScrollExtent);

//     _scrollController.jumpTo(newPosition);
//   }

//   @override
//   Widget build(BuildContext context) {
//     double maxIndicatorTop = MediaQuery.of(context).size.height - 90;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("My Vocab List"),
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.green,
//         onPressed: () {
//           Get.toNamed(
//             RouteHelper.getAddNewWordPage(),
//             arguments: {
//               'from': 'Word',
//             },
//           );
//         },
//         child: Icon(
//           Icons.add,
//           color: Colors.white,
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(100.0),
//         ),
//       ),
//       body: SafeArea(
//           child: SizedBox(
//         height: 800,
//         child: ListView.builder(
//             controller: _scrollController,
//             itemCount: wordsList.length,
//             itemBuilder: (context, index) {
//               wordsList.sort((a, b) => a.word
//                   .toLowerCase()
//                   .trim()
//                   .compareTo(b.word.toLowerCase().trim()));
//               return CustomListItemView(
//                 index: index,
//                 word: wordsList[index],
//                 onPressed: () {
//                   wordController.indexforWord.value = index;
//                   Get.to(WordFlipCard());
//                 },
//               );
//             }),
//       )),
//     );
//   }
// }

class WordList extends StatefulWidget {
  const WordList({super.key});
  @override
  State<WordList> createState() => _WordListState();
}
class _WordListState extends State<WordList> {
  ScrollController _scrollController = ScrollController();
  late Future<List<Word>> futureWords;
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

        filteredWords = mydatalist;
      });
    });
  }
  void updateSearchQuery(String newQuery) {
    setState(() {
      query = newQuery;
      filteredWords = searchWords(mydatalist, query);
    });
  }
  int selectWordIndexforIdiom(String word) {
    int count = -1;
    for (int i = 0; i < mydatalist.length; i++) {
      if (mydatalist[i].word == word) {
        return count + 1;
      } else {
        count++;
      }
    }
    print("Count ${count}");
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
      body: Scrollbar(
        radius: Radius.circular(10),
        interactive: true,
        thickness: 50,
        thumbVisibility: true,
        controller:
            _scrollController,
        child: ListView.builder(
          controller:
              _scrollController,
          itemCount: filteredWords.length,
          itemBuilder: (context, index) {
            // mydatalist.sort((a, b) => a.word
            //     .toLowerCase()
            //     .trim()
            //     .compareTo(b.word.toLowerCase().trim()));
            final word = filteredWords[index];
            return CustomListItemView(
              index: index,
              word: word,
              onPressed: () {
                index = selectWordIndexforIdiom(word.word);
                wordController.indexforWord.value = index;
                print(index);
                Get.to(WordFlipCard());
              },
            );
          },
        ),
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

