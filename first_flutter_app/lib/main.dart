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
      'answers': ['Pink', 'Black', 'Blue', 'White'],
      'correctAns': 'Blue'
    },
    {
      'ques': 'What is your favourite animal?',
      'answers': ['Dog', 'Cat', 'Lion', 'Tiger'],
      'correctAns': 'Tiger'
    },
    {
      'ques': 'What is your favourite animal?',
      'answers': ['Dog', 'Cat', 'Lion', 'Tiger'],
      'correctAns': 'Tiger'
    },
    {
      'ques': 'What is your favourite animal?',
      'answers': ['Dog', 'Cat', 'Lion', 'Tiger'],
      'correctAns': 'Tiger'
    },
    {
      'ques': 'What is your favourite animal?',
      'answers': ['Dog', 'Cat', 'Lion', 'Tiger'],
      'correctAns': 'Tiger'
    },
    {
      'ques': 'What is your favourite animal?',
      'answers': ['Dog', 'Cat', 'Lion', 'Tiger'],
      'correctAns': 'Tiger'
    }
  ];

  void _ansQuestion(String val) {
    print(val);
    if (val == _questionList[_quesIndex]['correctAns']) {
      print('Correct');
    } else {
      print('Wrong');
    }
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
            ...(_questionList[_quesIndex]['answers'] as List<String>)
                .map((ans) {
              return Answer(ansText: ans, chooseHandler: _ansQuestion);
            }).toList(),
            Options(
              nextFunction: _goNext,
              backFunction: _goBack,
              isBack: _quesIndex != 0,
              isNext: _quesIndex != _questionList.length - 1,
            ),
          ],
        ),
      ),
    );
  }
}
