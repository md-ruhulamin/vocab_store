// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/common/model/word_model.dart';

import 'package:word_meaning/data/data.dart';
import 'package:word_meaning/controller.dart';
import 'package:word_meaning/features/text_audio/controller.dart/screen/operation/update.dart';

class AppBarWidget extends StatelessWidget {
  Word currword;
  int index;
  int currlength;

  AppBarWidget({
    Key? key,
    required this.currword,
    required this.index,
    required this.currlength,
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 200,
          child: Text(
            "${index + 1} ${currword.word} ",
            overflow: TextOverflow.ellipsis,
          ),
        ),
        IconButton(
            onPressed: () {
              
              Get.to(UpdateWordScreen(
                index: currword.id,
                word: currword,
                
              ));
            },
            icon: Icon(Icons.edit))
      ],
    );
  }
}
