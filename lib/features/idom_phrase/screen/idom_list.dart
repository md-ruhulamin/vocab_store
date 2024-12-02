// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/features/idom_phrase/controllers/idom_controller.dart';
import 'package:word_meaning/features/idom_phrase/screen/myidom_flip_card.dart';
import 'package:word_meaning/features/my_dictionary/screen/mydictonaryscreen.dart';
import 'package:word_meaning/features/search_word/controller/search-controller.dart';
import 'package:word_meaning/homepage.dart';
import 'package:word_meaning/route/routes.dart';
import 'package:word_meaning/features/idom_phrase/screen/idom_flip_card.dart';

import '../../../common/model/word_model.dart';
import '../../../utils/color.dart';
import '../../collection/collection_controller.dart';
import '../../search_word/screen/search_word.dart';

class IdiomList extends StatefulWidget {
  @override
  State<IdiomList> createState() => _IdiomListState();
}

class _IdiomListState extends State<IdiomList>
    with SingleTickerProviderStateMixin, RouteAware {
  late IdiomController idiomcontroller;

  late TabController _tabController;
  int _selectedIndex = 0;
  late Future<List<Word>> futureWords;
  late Future<List<Word>> futureIdioms;
  List<Word> allWords = [];
  List<Word> filteredWords = [];
  List<Word> allidioms = [];
  List<Word> filteredIdioms = [];
  String queryforWords = '';
  String queryforIdioms = '';
  late WordController wordController;
  void updateSearchQuery(String newQuery) {
    setState(() {
      queryforWords = newQuery;
      queryforIdioms = newQuery;
      filteredWords = searchWords(allWords, queryforWords);
      filteredIdioms = searchWords(allidioms, queryforIdioms);
    });
  }

  final AuthController authController = Get.put(AuthController());
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
    _tabController.addListener(() {
      // Check if the index is not changing due to a swipe and is different from the current selected index
      if (!_tabController.indexIsChanging &&
          _selectedIndex != _tabController.index) {
        setState(() {
          _selectedIndex = _tabController.index;
        });
      }
    });

    idiomcontroller = Get.put(IdiomController());

    futureWords = WordService().fetchWords('idoms');
    futureWords.then((words) {
      setState(() {
        allWords = words;
        filteredWords = words;
      });
    });
    futureIdioms =
        WordService().fetchWords(authController.userStringIdiom.value);
    futureIdioms.then((idioms) {
      setState(() {
        allidioms = idioms;
        filteredIdioms = idioms;
      });
    });
  }

  @override
  void didPopNext() {
    setState(() {
      futureIdioms =
          WordService().fetchWords(authController.userStringIdiom.value);
      futureIdioms.then((idioms) {
        setState(() {
          allidioms = idioms;
          filteredIdioms = idioms;
        });
      });
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      print(index);
      _selectedIndex = index;
      _tabController.animateTo(index);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  int selectWordIndexforIdiom(String word) {
    int count = -1;
    for (int i = 0; i < allidioms.length; i++) {
      if (allidioms[i].word == word) {
        return count+1;
      } else {
        count++;
      }
    }
    return count;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("My Idiom List"),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Get.toNamed(
            RouteHelper.getAddNewWordPage(),
            arguments: {
              'from': 'Idiom',
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
      body: TabBarView(
        controller: _tabController,
        children: [
          FutureBuilder<List<Word>>(
            future: futureIdioms,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                return filteredIdioms.length == 0
                    ? const Center(child: Text("No idiom Found"))
                    : ListView.builder(
                        itemCount: filteredIdioms.length,
                        itemBuilder: (context, index) {
                          final word = filteredIdioms[index];

                          return CustomListItemView(
                            index: index,
                            word: word,
                            onPressed: () {

                              index = selectWordIndexforIdiom(word.word);
                              idiomcontroller.indexforMyIdom.value = allidioms.length-1- index;
                              Get.to(MyIdiomFlipCard());
                            },
                          );

                          //     Container(
                          //         margin: const EdgeInsets.all(2),
                          //         padding: const EdgeInsets.symmetric(
                          //             horizontal: 10, vertical: 10),
                          //         decoration: BoxDecoration(
                          //             color: listColor.withOpacity(0.8),
                          //             borderRadius: BorderRadius.circular(10)),
                          //         child: GestureDetector(
                          //           onTap: () {
                          //             idiomcontroller.indexforMyIdom.value = index;
                          //             Get.to(MyIdiomFlipCard());
                          //           },
                          //           child: Text(
                          //             word.word,
                          //             style: const TextStyle(fontSize: 18),
                          //           ),
                          //         ));
                          //   },
                          // );
                        });
              }
            },
          ),
          FutureBuilder<List<Word>>(
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
                          return CustomListItemView(
                            index: index,
                            word: word,
                            onPressed: () {
                              idiomcontroller.indexforDefaultIdiom.value =
                                  index;

                              Get.to(IdiomFlipCard());
                            },
                          );

                          // Container(
                          //     margin: const EdgeInsets.all(2),
                          //     padding: const EdgeInsets.symmetric(
                          //         horizontal: 10, vertical: 10),
                          //     decoration: BoxDecoration(
                          //         color: listColor.withOpacity(0.8),
                          //         borderRadius: BorderRadius.circular(10)),
                          //     child: GestureDetector(
                          //       onTap: () {
                          //         idiomcontroller.indexforDefaultIdiom.value =
                          //             index;

                          //         Get.to(IdiomFlipCard());
                          //       },
                          //       child: Text(
                          //         word.word,
                          //         style: const TextStyle(fontSize: 18),
                          //       ),
                          //     ));
                        },
                      );
              }
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.edit_document,
              size: 35,
              color: Colors.green,
            ),
            icon: Icon(
              Icons.edit_document,
              size: 30,
            ),
            label: 'My Idiom List',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.document_scanner,
              size: 35,
              color: Colors.green,
            ),
            icon: Icon(
              Icons.document_scanner,
              size: 30,
            ),
            label: 'Practice List',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
