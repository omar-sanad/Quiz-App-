import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State {
  int indexQue = 0;
  int result = 0;
  final List<Map<String, Object>> questions = [
    {
      "Question": "What is your fav color?",
      "Answers": [
        {"Answer": "Red", "Score": 0},
        {"Answer": "Blue", "Score": 20},
        {"Answer": "White", "Score": 15},
        {"Answer": "Black", "Score": 20}
      ]
    },
    {
      "Question": "What is your fav animal?",
      "Answers": [
        {"Answer": "Dog", "Score": 0},
        {"Answer": "Cat", "Score": 20},
        {"Answer": "Elephant", "Score": 15},
        {"Answer": "Lion", "Score": 20}
      ]
    },

    // "What is your fav color?",
    // "What is your fav Animal",
  ];

  void answers(int score) {
    setState(() {
      indexQue++;
    });
    result = result + score;
  }

  void reset() {
    // Calls build method
    setState(() {
      indexQue = 0;
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz"),
        ),
        body: Column(
          children: [
            (questions.length > indexQue)
                ? Quiz(questions, answers, indexQue)
                : Result(result, reset),
          ],
        ),
      ),
    );
  }
}
