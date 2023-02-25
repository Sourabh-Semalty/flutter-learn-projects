// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answer;
  const Answer(this.selectHandler, this.answer, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
        child: ElevatedButton(
          onPressed: selectHandler,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          child: Text(answer),
        ));
  }
}
