import 'package:flutter/material.dart';
import 'package:word_meaning/utils/color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final int maxline;
  final Color color;
  const CustomButton(
      {super.key,
      required this.text,
      this.color = buttonColor,
      this.maxline = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          text,
          maxLines: maxline,
          // ignore: prefer_const_constructors
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Bitter',
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
