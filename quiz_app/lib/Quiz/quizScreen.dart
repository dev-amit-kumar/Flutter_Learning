import 'package:flutter/material.dart';
import 'quiz.dart';
import 'reviewAnswer.dart';

class QuizScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizScreenWithState();
  }
}

class _QuizScreenWithState extends State<QuizScreen> {
  int _quesIndex = 0;
  int _quesAnswered = 0;
  var result = {};
  final _questionList = [
    {
      'quesId': 1,
      'ques': 'Which type of JavaScript language is',
      'answers': [
        'Object-Oriented',
        'Object-Based',
        'Assembly-language',
        'High-level'
      ],
      'correctAns': 'Object-Based'
    },
    {
      'quesId': 2,
      'ques':
          'Which one of the following also known as Conditional Expression:',
      'answers': [
        'Alternative to if-else',
        'Switch statement',
        'If-then-else statement',
        'immediate if'
      ],
      'correctAns': 'immediate if'
    },
    {
      'quesId': 3,
      'ques': 'In JavaScript, what is a block of statement?',
      'answers': [
        'Conditional block',
        'block that combines a number of statements into a single compound statement',
        'both conditional block and a single statement',
        'block that contains a single statement'
      ],
      'correctAns':
          'block that combines a number of statements into a single compound statement'
    },
    {
      'quesId': 4,
      'ques':
          'When interpreter encounters an empty statements, what it will do:',
      'answers': [
        'Shows a warning',
        'Prompts to complete the statement',
        'Throws an error',
        'Ignores the statements'
      ],
      'correctAns': 'Ignores the statements'
    },
    {
      'quesId': 5,
      'ques': 'The "function" and " var" are known as:',
      'answers': [
        'Keywords',
        'Data types',
        'Declaration statements',
        'Prototypes'
      ],
      'correctAns': 'Declaration statements'
    },
    {
      'quesId': 6,
      'ques':
          'Which of the following variables takes precedence over the others if the names are the same?',
      'answers': [
        'Global variable',
        'The local element',
        'The two of the above',
        'None of the above'
      ],
      'correctAns': 'The local element'
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
