import 'package:flutter/material.dart';
import './Quiz/playQuiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppWithState();
  }
}

class _MyAppWithState extends State<MyApp> {
  int _quesIndex = 0;
  int _quesAnswered = 0;
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
    setState(() {
      _quesAnswered += 1;
    });
    if (val == _questionList[_quesIndex]['correctAns']) {
      print('Correct $_quesAnswered');
    } else {
      print('Wrong $_quesAnswered');
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
          body: (_quesAnswered != _questionList.length)
              ? PlayQuiz(
                  quesList: _questionList,
                  index: _quesIndex,
                  goNext: _goNext,
                  goBack: _goBack,
                  ansQues: _ansQuestion,
                )
              : Text('Completed')),
    );
  }
}
