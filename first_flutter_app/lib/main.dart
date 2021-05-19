import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void ansQuestion(int val) {
    print(val);
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
          Text('Question 1'),
          ElevatedButton(child: Text('a'), onPressed: () => ansQuestion(1)),
          ElevatedButton(child: Text('b'), onPressed: () => ansQuestion(2)),
          ElevatedButton(child: Text('c'), onPressed: () => ansQuestion(3)),
          ElevatedButton(child: Text('d'), onPressed: () => ansQuestion(4)),
          ElevatedButton(
              child: Text('Clear'), onPressed: () => print('Cleared')),
        ],
      ),
    ));
  }
}
