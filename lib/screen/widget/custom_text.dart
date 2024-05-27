
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  CustomButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.green,
        boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 21, color: Colors.white),
      ),
    );
  }
}
