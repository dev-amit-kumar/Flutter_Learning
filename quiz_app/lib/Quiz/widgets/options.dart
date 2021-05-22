import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final Function nextFunction;
  final Function backFunction;
  final bool isNext;
  final bool isBack;
  Options({this.nextFunction, this.backFunction, this.isBack, this.isNext});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        isBack
            ? ElevatedButton(
                child: Text('Back'),
                onPressed: backFunction,
              )
            : ElevatedButton(
                child: Text('Back'),
                onPressed: null,
              ),
        isNext
            ? ElevatedButton(
                child: Text('Next'),
                onPressed: nextFunction,
              )
            : ElevatedButton(
                child: Text('Next'),
                onPressed: null,
              )
      ],
      mainAxisSize: MainAxisSize.max,
    );
  }
}
