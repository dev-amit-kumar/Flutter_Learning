import 'package:first_flutter_app/Quiz/index.dart';
import 'package:flutter/material.dart';
import 'homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/quiz': (context) => QuizScreen(),
      },
      title: 'QuizApp',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: HomeScreen(),
      ),
    );
  }
}
