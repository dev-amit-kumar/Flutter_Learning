import 'package:flutter/material.dart';
import './Quiz/playQuiz.dart';
import './Quiz/result.dart';

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
  var result = {};
  final _questionList = [
    {
      'quesId': 1,
      'ques': 'What is your favourite color?',
      'answers': ['Pink', 'Black', 'Blue', 'White'],
      'correctAns': 'Blue'
    },
    {
      'quesId': 2,
      'ques': 'What is your favourite animal?',
      'answers': ['Dog', 'Cat', 'Lion', 'Tiger'],
      'correctAns': 'Tiger'
    },
    {
      'quesId': 3,
      'ques': 'What is your favourite animal?',
      'answers': ['Dog', 'Cat', 'Lion', 'Tiger'],
      'correctAns': 'Tiger'
    },
    {
      'quesId': 4,
      'ques': 'What is your favourite animal?',
      'answers': ['Dog', 'Cat', 'Lion', 'Tiger'],
      'correctAns': 'Tiger'
    },
    {
      'quesId': 5,
      'ques': 'What is your favourite animal?',
      'answers': ['Dog', 'Cat', 'Lion', 'Tiger'],
      'correctAns': 'Tiger'
    },
    {
      'quesId': 6,
      'ques': 'What is your favourite animal?',
      'answers': ['Dog', 'Cat', 'Lion', 'Tiger'],
      'correctAns': 'Tiger'
    }
  ];

  void _ansQuestion(String val) {
    int quesId = _questionList[_quesIndex]['quesId'];
    bool isPresent = result.containsKey(quesId);
    result[quesId] = val;
    if (!isPresent) {
      setState(() {
        _quesAnswered += 1;
      });
    }
  }

  void _goBack() {
    if (_quesIndex > 0) {
      setState(() {
        _quesIndex -= 1;
      });
    }
  }

  void _goNext() {
    if (_quesIndex < _questionList.length - 1) {
      setState(() {
        _quesIndex += 1;
      });
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
            : Result(
                questionList: _questionList,
                answerList: result,
              ),
      ),
    );
  }
}
