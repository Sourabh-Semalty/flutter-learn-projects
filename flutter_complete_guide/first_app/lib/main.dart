import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'What is the capital of France?',
      'answers': [
        {'text': 'Paris', 'score': 10},
        {'text': 'Madrid', 'score': 2},
        {'text': 'Rome', 'score': 5},
        {'text': 'Berlin', 'score': 6},
      ],
    },
    {
      'questionText': 'What is the highest mountain in the world?',
      'answers': [
        {'text': 'Mount Everest', 'score': 2},
        {'text': 'Mount Kilimanjaro', 'score': 5},
        {'text': 'Mount Denali', 'score': 10},
        {'text': 'Mount Aconcagua', 'score': 3},
      ],
    },
    {
      'questionText': 'Who directed the movie "Jaws"?',
      'answers': [
        {'text': 'Steven Spielberg', 'score': 9},
        {'text': 'Martin Scorsese', 'score': 2},
        {'text': 'Alfred Hitchcock', 'score': 3},
        {'text': 'Quentin Tarantino', 'score': 10},
      ],
    },
    {
      'questionText': 'What is the name of your cat?',
      'answers': [
        {'text': 'Mittens', 'score': 8},
        {'text': 'Whiskers', 'score': 10},
        {'text': 'Fluffy', 'score': 6},
        {'text': 'Shadow', 'score': 5},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: const Center(child: Text('Quiz App')),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0)),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questions: _questions,
              questionIndex: _questionIndex,
            )
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
