// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/data/data.dart';
import 'package:word_meaning/features/idom_phrase/controllers/idom_controller.dart';
import 'package:word_meaning/features/quiz/quiz_view.dart';
import 'package:word_meaning/main.dart';
import 'package:word_meaning/route/routes.dart';
import 'package:word_meaning/sqflite/table/controller.dart';
import 'package:word_meaning/sqflite/table/table_list.dart';
import 'package:word_meaning/sqflite/table/view.dart';
import 'package:word_meaning/utils/color.dart';
import 'common/widget/custom_text.dart';
import 'features/collection/collection_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const double size = 80;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _tableNames = [];
  late TableController tableController;
  @override
  int selected = 0;
  //bool heart = false;
  final controller = PageController();
  IdiomController _idiomController = Get.put(IdiomController());

  final TextEditingController _tableNameController = TextEditingController();
  late WordController wordController;
  final AuthController authController = Get.find();
  void initState() {
    super.initState();
    wordController = Get.put(WordController());
    wordController.fetchAllWords();
    Get.put(IdiomController()).fetchUserIdioms();
    Get.put(IdiomController()).fetchDefaultIdioms();
    tableController = Get.put(TableController());
    _fetchTables();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: PageView(controller: controller, children: [
          Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  height: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text:
                            "Unlock the World of Words\nWord by Word, We Grow.",
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "User Code: ${authController.userString}",
                            color: Colors.black,
                            fontSize: 15,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 35,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          //    Get.to(WordList());
                          Get.toNamed(RouteHelper.getDefaultWordPage());
                        },
                        child: CustomGrid(
                            image: "assets/icons/comodity.gif",
                            text: "Practice\n(${mydatalist.length})"),
                      ),
                      InkWell(
                          onTap: () {
                            Get.toNamed(RouteHelper.getIdomPage());
                          },
                          child: Obx(
                            () => CustomGrid(
                                image: "assets/icons/document.gif",
                                text:
                                    "Idiom \n(${_idiomController.myIdiomList.length + _idiomController.myDeafultIdiomList.length})"),
                          )),
                      InkWell(
                          onTap: () {
                            Get.toNamed(
                                RouteHelper.getSearchingWordfromMYDict());
                          },
                          child: Obx(
                            () => CustomGrid(
                                image: "assets/icons/book2.gif",
                                text:
                                    "My List\n(${wordController.mywordList.length}) "),
                          )),
                      // InkWell(
                      //   onTap: () {
                      //     Get.toNamed(RouteHelper.getSearchingWordfromMYDict());
                      //   },
                      //   child: SizedBox(
                      //       height: HomePage.size,
                      //       width: HomePage.size,
                      //       child: CustomButton(text: "Explore Your Collection")),
                      // ),
                      // InkWell(
                      //   onTap: () {
                      //     Get.toNamed(RouteHelper.getSearchMeaningOnline());
                      //   },
                      //   child: CustomGrid(
                      //       image: "assets/icons/search.gif",
                      //       text: "Search From Online"),
                      // ),
                      // InkWell(
                      //   onTap: () {
                      //     Get.to(QuizPageInfo());
                      //   },
                      //   child: CustomGrid(
                      //       image: "assets/icons/test-tube2.gif", text: "Quiz"),
                      // ),
                    ]),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount: _tableNames.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: InkWell(
                          onTap: () => Get.to(CustomTableView(
                            tabelname: _tableNames[index],
                          )),
                          child: CustomGrid(
                              image: "assets/icons/files.gif",
                              text: _tableNames[index]),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          QuizPageInfo(),
          Center(child: Text('Style')),
          Center(child: Text('Profile')),
        ]),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.green,
      //   onPressed: () {
      //     Get.toNamed(RouteHelper.getSearchMeaningOnline());
      //   },
      //   child: Image.asset(
      //     "assets/icons/search.gif",
      //     height: 30,
      //   ),
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(100.0),
      //   ),
      // ),
      bottomNavigationBar: StylishBottomBar(
//  option: AnimatedBarOptions(
//    iconSize: 32,
//    barAnimation: BarAnimation.liquid,
//    iconStyle: IconStyle.animated,
//    opacity: 0.3,
//  ),
        option: BubbleBarOptions(
          barStyle: BubbleBarStyle.horizontal,
          // barStyle: BubbleBarStyle.vertical,
          bubbleFillStyle: BubbleFillStyle.fill,

          opacity: 0.3,
        ),
        // option: DotBarOptions(
        //   dotStyle: DotStyle.tile,
        //   gradient: const LinearGradient(
        //     colors: [
        //       Colors.deepPurple,
        //       Colors.pink,
        //     ],
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //   ),
        // ),
        items: [
          BottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
            backgroundColor: Colors.blue,
            selectedIcon: const Icon(Icons.home),
          ),
          BottomBarItem(
            icon: const Icon(Icons.quiz),
            title: const Text('Quiz'),
            backgroundColor: Colors.green,
            selectedIcon: const Icon(Icons.quiz_sharp),
          ),
          BottomBarItem(
            icon: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            title: const Text(
              'Favorite',
            ),
            backgroundColor: Colors.red,
          ),
          BottomBarItem(
            icon: const Icon(Icons.search),
            title: const Text('Search'),
            backgroundColor: Colors.orange,
          ),
          BottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text('Profile'),
            backgroundColor: Colors.purple,
          ),
        ],
        //fabLocation: StylishBarFabLocation.center,
        hasNotch: true,
        currentIndex: selected,
        onTap: (index) {
          setState(() {
            selected = index;
            controller.jumpToPage(index);
          });
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddDogDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future<void> _createTable() async {
    String tableName = _tableNameController.text;
    if (tableName.isNotEmpty) {
      await CustomDatabase.instance.createCustomTable(tableName);
      _fetchTables();
      _tableNameController.clear();
    }
  }

  Future<void> _fetchTables() async {
    final tables = await CustomDatabase.instance.getAllTables();
    setState(() {
      _tableNames = tables;
      tableController.tableList = _tableNames;
    });
  }

  void _showAddDogDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Table '),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _tableNameController,
                decoration: InputDecoration(labelText: 'Enter Table Name'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _createTable();
                _fetchTables();
                Navigator.pop(context);
              },
              child: Text('Create table'),
            ),
          ],
        );
      },
    );
  }
}

class CustomGrid extends StatelessWidget {
  String image;
  String text;
  CustomGrid({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: backgroundColor.withOpacity(0.6),
          borderRadius: BorderRadius.circular(10)),
      child: SizedBox(
          height: HomePage.size,
          width: HomePage.size,
          child: Column(
            children: [
              Image.asset(image, height: 40),
              Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          )),
    );
  }
}
