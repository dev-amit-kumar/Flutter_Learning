import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final Function nextFunction;
  final Function backFunction;
  Options({this.nextFunction, this.backFunction});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          ElevatedButton(
            child: Text('Back'),
            onPressed: backFunction,
          ),
          ElevatedButton(child: Text('Next'), onPressed: nextFunction)
        ],
        mainAxisSize: MainAxisSize.max,
      ),
    );
  }
}
