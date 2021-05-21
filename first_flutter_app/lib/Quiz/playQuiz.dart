import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'options.dart';

class PlayQuiz extends StatelessWidget {
  final List<Map<String, Object>> quesList;
  final int index;
  final Function ansQues;
  final Function goNext;
  final Function goBack;

  PlayQuiz(
      {@required this.quesList,
      @required this.index,
      @required this.ansQues,
      @required this.goBack,
      @required this.goNext});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20, left: 20),
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Question(quesList[index]['ques'], index + 1),
          ...(quesList[index]['answers'] as List<String>).map((ans) {
            return Answer(ansText: ans, chooseHandler: ansQues);
          }).toList(),
          Options(
            nextFunction: goNext,
            backFunction: goBack,
            isBack: index != 0,
            isNext: index != quesList.length - 1,
          ),
        ],
      ),
    );
  }
}
