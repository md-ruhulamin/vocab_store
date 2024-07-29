// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/common/style/color.dart';
import 'package:word_meaning/features/idom_phrase/controllers/idom_controller.dart';
import 'package:word_meaning/route/routes.dart';
import 'package:word_meaning/features/idom_phrase/screen/idom_flip_card.dart';

class IdomList extends StatefulWidget {
  const IdomList({super.key});

  @override
  State<IdomList> createState() => _IdomListState();
}

class _IdomListState extends State<IdomList> {
  late IdomController idomcontroller;
  void initState() {
    super.initState();
    idomcontroller = Get.put(IdomController());
    idomcontroller.fetchAllIdoms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Idom List"),
      ),
      body: SafeArea(
        child: SizedBox(
            height: 800,
            child: Obx(
              () => ListView.builder(
                  itemCount: idomcontroller.idomsList.length,
                  itemBuilder: (context, index) {
                    return idomcontroller.idomsList.isNotEmpty
                        ? Container(
                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                color: listColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: GestureDetector(
                              onTap: () {
                                idomcontroller.indexforIdom.value = index;
                                Get.to(IdomFlipCard());
                               // Get.toNamed(RouteHelper.getIdomPage());
                              },
                              child: Text(
                                idomcontroller.idomsList[index].word,
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
