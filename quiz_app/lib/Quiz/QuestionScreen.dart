import 'package:flutter/material.dart';
import 'widgets/question.dart';
import 'widgets/options.dart';

class QuestionScreen extends StatelessWidget {
  final List<Map<String, Object>> quesList;
  final int index;
  final Function ansQues;
  final Function goNext;
  final Function goBack;

  QuestionScreen(
      {@required this.quesList,
      @required this.index,
      @required this.ansQues,
      @required this.goBack,
      @required this.goNext});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
