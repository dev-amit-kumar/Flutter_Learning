import 'package:flutter/material.dart';
import 'widgets/question.dart';
import 'widgets/options.dart';

class QuestionScreen extends StatelessWidget {
  final Map quesData;
  final int quesNo;
  final Function ansHandler;
  final Function goNext;
  final Function goBack;
  final bool isBack;
  final bool isNext;
  final String currentAns;

  QuestionScreen(
      {@required this.quesData,
      @required this.ansHandler,
      @required this.goBack,
      @required this.goNext,
      @required this.isBack,
      @required this.isNext,
      @required this.quesNo,
      @required this.currentAns});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Question(
              question: quesData['ques'],
              quesNo: quesNo,
              options: quesData['answers'],
              submitFunction: ansHandler,
              currAns: currentAns),
          Options(
            nextFunction: goNext,
            backFunction: goBack,
            isBack: isBack,
            isNext: isNext,
          ),
        ],
      ),
    );
  }
}
