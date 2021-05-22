import 'package:flutter/material.dart';
import 'widgets/question.dart';
import 'widgets/options.dart';

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
          Question(
            question: quesList[index]['ques'],
            quesNo: index + 1,
            options: quesList[index]['answers'],
            submitFunction: ansQues,
          ),
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
