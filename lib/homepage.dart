// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/data/data.dart';
import 'package:word_meaning/features/idom_phrase/controllers/idom_controller.dart';

import 'package:word_meaning/features/text_audio/controller.dart/screen/widget/custom_text.dart';
import 'package:word_meaning/main.dart';
import 'package:word_meaning/route/routes.dart';
import 'package:word_meaning/utils/color.dart';

import 'common/widget/custom_text.dart';
import 'features/collection/collection_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const double size = 130;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  IdomController _idomController = Get.put(IdomController());
  late WordController wordController;

  final AuthController authController = Get.find();

  void initState() {
    super.initState();
    wordController = Get.put(WordController());
    wordController.fetchAllWords2();
    _idomController.fetchAllIdoms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        // title: const Text(
        //   'Select what you want to learn',
        //   style: TextStyle(
        //       color: Colors.white, fontSize: 19, fontFamily: 'Cera Pro'),
        // ),
      ),
      body: SafeArea(
        child: Center(
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
                      text: "Unlock the World of Words\nWord by Word, We Grow.",    color: Colors.white,
                      fontSize: 18,
                    ),             const SizedBox(height: 5),
                    CustomText(
                      text: "User Code: ${authController.userString}",
                      color: Colors.black,
                      fontSize: 15,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Wrap(runSpacing: 10, spacing: 10, children: [
                InkWell(
                  onTap: () {
                    //    Get.to(WordList());
                    Get.toNamed(RouteHelper.getDefaultWordPage());
                  },
                  child: CustomGrid(
                      image: "assets/icons/comodity.gif",
                      text: "Default Word (${wordsList.length})"),
                ),
                InkWell(
                    onTap: () {
                      Get.toNamed(RouteHelper.getIdomPage());
                    },
                    child: Obx(
                      () => CustomGrid(
                          image: "assets/icons/document.gif",
                          text:
                              "Idiom and Phrases (${_idomController.idomsList.length})"),
                    )),
                InkWell(
                    onTap: () {
                      Get.toNamed(RouteHelper.getSearchingWordfromMYDict());
                    },
                    child: Obx(
                      () => CustomGrid(
                          image: "assets/icons/book2.gif",
                          text:
                              "My Vocub Store (${wordController.mywordList.length}) "),
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
                InkWell(
                  onTap: () {
                    Get.toNamed(RouteHelper.getSearchMeaningOnline());
                  },
                  child: CustomGrid(
                      image: "assets/icons/search.gif",
                      text: "Search From Online"),
                ),
              ]),
            ],
          ),
        ),
      ),
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
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
          color: backgroundColor.withOpacity(0.6),
          borderRadius: BorderRadius.circular(10)),
      child: SizedBox(
          height: HomePage.size,
          width: HomePage.size,
          child: Column(
            children: [
              Image.asset(image, height: 70),
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
