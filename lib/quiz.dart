import 'package:flutter/cupertino.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answer;
  int indexQue;
  Quiz(this.questions, this.answer, this.indexQue);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[indexQue]["Question"] as String),
        ...(questions[indexQue]["Answers"] as List).map((element) =>
            Answer(() => answer(element["Score"] as int), element["Answer"])),
      ],
    );
  }
}
