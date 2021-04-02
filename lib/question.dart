import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionTextHandler;

  Question(this.questionTextHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionTextHandler,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
