import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final VoidCallback reset;
  Result(this.result, this.reset);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: Text(
          "Final Score: " + result.toString(),
          style: TextStyle(fontSize: 30),
        )),
        ElevatedButton(
          onPressed: reset,
          child: Text("Reset !"),
        ),
      ],
    );
  }
}
