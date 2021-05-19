import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  int quesIndex = 0;
  var questionList = [
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
  void ansQuestion(int val) {
    print(val);
  }

  void goBack() {
    if (quesIndex > 0) {
      quesIndex -= 1;
      print(quesIndex);
    } else {
      print('${quesIndex} First question');
    }
  }

  void goNext() {
    if (quesIndex < questionList.length - 1) {
      quesIndex += 1;
      print(quesIndex);
    } else {
      print('${quesIndex} Last question');
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
            Text('Q${quesIndex + 1}. '),
            Text(questionList[quesIndex]['ques'])
          ]),
          ElevatedButton(
              child: Text(questionList[quesIndex]['ans1']),
              onPressed: () => ansQuestion(1)),
          ElevatedButton(
              child: Text(questionList[quesIndex]['ans2']),
              onPressed: () => ansQuestion(2)),
          ElevatedButton(
              child: Text(questionList[quesIndex]['ans3']),
              onPressed: () => ansQuestion(3)),
          ElevatedButton(
              child: Text(questionList[quesIndex]['ans4']),
              onPressed: () => ansQuestion(4)),
          Row(children: [
            ElevatedButton(child: Text('Back'), onPressed: goBack),
            ElevatedButton(child: Text('Next'), onPressed: goNext)
          ])
        ],
      ),
    ));
  }
}
