import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final questionList;
  final answerList;
  Result({this.questionList, this.answerList});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            'Review Answers',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
          ),
          ...(questionList as List).map((question) {
            return Column(children: [
              Row(
                children: [
                  Row(children: [
                    Text('Ques: ',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 18)),
                    Text(
                      question['ques'],
                      style: TextStyle(fontSize: 16),
                    )
                  ]),
                  ElevatedButton(onPressed: null, child: Text('Edit'))
                ],
              ),
              Row(
                children: [
                  Text('Ans: ',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
                  Text(
                    answerList[question['quesId']],
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ]);
          }).toList(),
          ElevatedButton(onPressed: null, child: Text('Submit'))
        ],
      ),
    );
  }
}
