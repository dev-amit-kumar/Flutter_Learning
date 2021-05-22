import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String ansText;
  final Function chooseHandler;
  Answer({this.ansText, this.chooseHandler});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(ansText),
        onPressed: () => this.chooseHandler(ansText),
      ),
    );
  }
}
