import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  final int quesNo;
  final List options;
  final Function submitFunction;
  Question({this.question, this.quesNo, this.options, this.submitFunction});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(children: [
              Text('Q$quesNo. ',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
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
                    child: Row(
                      children: [
                        // ElevatedButton(onPressed: () => submitFunction(ans)),
                        Radio(
                            value: ans, groupValue: 'abc', onChanged: (val) {}),
                        Text(ans)
                      ],
                    ),
                  );
                }).toList(),
              ],
            )
          ],
        ),
      ),
      color: Colors.grey[50],
      elevation: 1,
    );
  }
}
