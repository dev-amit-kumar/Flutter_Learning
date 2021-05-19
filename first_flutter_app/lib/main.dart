import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
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
  void _ansQuestion(int val) {
    print(val);
  }

  void _goBack() {
    if (_quesIndex > 0) {
      setState(() {
        _quesIndex -= 1;
      });
      print(_quesIndex);
    } else {
      print('${_quesIndex} First question');
    }
  }

  void _goNext() {
    if (_quesIndex < _questionList.length - 1) {
      setState(() {
        _quesIndex += 1;
      });
      print(_quesIndex);
    } else {
      print('${_quesIndex} Last question');
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
          Row(children: [
            Text('Q${_quesIndex + 1}. '),
            Text(_questionList[_quesIndex]['ques'])
          ]),
          ElevatedButton(
              child: Text(_questionList[_quesIndex]['ans1']),
              onPressed: () => _ansQuestion(1)),
          ElevatedButton(
              child: Text(_questionList[_quesIndex]['ans2']),
              onPressed: () => _ansQuestion(2)),
          ElevatedButton(
              child: Text(_questionList[_quesIndex]['ans3']),
              onPressed: () => _ansQuestion(3)),
          ElevatedButton(
              child: Text(_questionList[_quesIndex]['ans4']),
              onPressed: () => _ansQuestion(4)),
          Row(children: [
            ElevatedButton(child: Text('Back'), onPressed: _goBack),
            ElevatedButton(child: Text('Next'), onPressed: _goNext)
          ])
        ],
      ),
    ));
  }
}
