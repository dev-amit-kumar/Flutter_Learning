import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './options.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppWithState();
  }
}

class _MyAppWithState extends State<MyApp> {
  int _quesIndex = 0;
  var _questionList = [
    {
      'ques': 'What is your favourite color?',
      'ans1': 'Pink',
      'ans2': 'Black',
      'ans3': 'Blue',
      'ans4': 'White'
    },
    {
      'ques': 'What is your favourite animal?',
      'ans1': 'Dog',
      'ans2': 'Cat',
      'ans3': 'Lion',
      'ans4': 'Tiger'
    },
    {
      'ques': 'What is your favourite animal?',
      'ans1': 'Dog',
      'ans2': 'Cat',
      'ans3': 'Lion',
      'ans4': 'Tiger'
    },
    {
      'ques': 'What is your favourite animal?',
      'ans1': 'Dog',
      'ans2': 'Cat',
      'ans3': 'Lion',
      'ans4': 'Tiger'
    },
    {
      'ques': 'What is your favourite animal?',
      'ans1': 'Dog',
      'ans2': 'Cat',
      'ans3': 'Lion',
      'ans4': 'Tiger'
    },
    {
      'ques': 'What is your favourite animal?',
      'ans1': 'Dog',
      'ans2': 'Cat',
      'ans3': 'Lion',
      'ans4': 'Tiger'
    }
  ];
  void _ansQuestion(String val) {
    print(val);
  }

  void _goBack() {
    if (_quesIndex > 0) {
      setState(() {
        _quesIndex -= 1;
      });
      print(_quesIndex);
    } else {
      print('$_quesIndex First question');
    }
  }

  void _goNext() {
    if (_quesIndex < _questionList.length - 1) {
      setState(() {
        _quesIndex += 1;
      });
      print(_quesIndex);
    } else {
      print('$_quesIndex Last question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(_questionList[_quesIndex]['ques'], _quesIndex + 1),
            Answer(_questionList[_quesIndex]['ans1'], _ansQuestion),
            Answer(_questionList[_quesIndex]['ans2'], _ansQuestion),
            Answer(_questionList[_quesIndex]['ans3'], _ansQuestion),
            Answer(_questionList[_quesIndex]['ans4'], _ansQuestion),
            Options(
              nextFunction: _goNext,
              backFunction: _goBack,
            )
          ],
        ),
      ),
    );
  }
}
