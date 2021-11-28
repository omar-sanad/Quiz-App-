import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answers;
  final String answer;
  Answer(this.answers, this.answer);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        onPressed: answers,
        child: Text(
          answer,
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
