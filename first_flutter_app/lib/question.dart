import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  final int quesNo;
  Question(this.questionText, this.quesNo);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        'Q$quesNo. ',
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
      ),
      Text(
        questionText,
        style: TextStyle(fontSize: 16),
      )
    ]);
  }
}
