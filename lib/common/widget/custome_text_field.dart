import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required TextEditingController controller,
      required this.hinttext,
      this.maxline = 1})
      : _controller = controller;

  final int maxline;
  final TextEditingController _controller;
  final String hinttext;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      maxLines: maxline,
      decoration: InputDecoration(
        hintMaxLines: 3,
        helperMaxLines: 3,
        contentPadding: EdgeInsets.symmetric
        (horizontal: 10,vertical: 10),
        border: const OutlineInputBorder(),
        hintText: hinttext,
      ),
    );
  }
}
