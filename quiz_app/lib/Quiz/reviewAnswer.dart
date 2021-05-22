import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final questionList;
  final answerList;
  Result({this.questionList, this.answerList});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Text(
            'Review Answers',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),
          ),
          ...(questionList as List).map((question) {
            return Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Ques: ',
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 14)),
                        Flexible(
                          child: Text(
                            question['ques'],
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text('Ans:   ',
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 14)),
                        Flexible(
                          child: Text(
                            answerList[question['quesId']],
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
          ElevatedButton(onPressed: null, child: Text('Submit'))
        ],
      ),
    );
  }
}
