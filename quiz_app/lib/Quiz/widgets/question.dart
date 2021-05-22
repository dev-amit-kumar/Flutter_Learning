import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  final int quesNo;
  final List options;
  final Function submitFunction;
  Question({this.question, this.quesNo, this.options, this.submitFunction});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Text('Q$quesNo. ',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
          Text(
            question,
            style: TextStyle(fontSize: 16),
          )
        ]),
        Column(
          children: [
            ...(options as List<String>).map((ans) {
              return Container(
                width: double.infinity,
                child: ElevatedButton(
                    child: Text(ans), onPressed: () => submitFunction(ans)),
              );
            }).toList(),
          ],
        )
      ],
    );
  }
}
