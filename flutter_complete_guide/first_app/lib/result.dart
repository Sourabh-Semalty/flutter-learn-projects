import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;
  const Result(this.resultScore, this.resetQuiz, {super.key});

  String get resultPharse {
    String resultText;
    if (resultScore <= 20) {
      resultText = 'You need to practice more babes... !';
    } else if (resultScore <= 30) {
      resultText = 'You are pretty likeable !';
    } else if (resultScore <= 50) {
      resultText = 'You are awesome and amazing';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 3.3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              resultPharse,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
                onPressed: resetQuiz, child: const Text('Reset Quiz'))
          ],
        ),
      ),
    );
  }
}
