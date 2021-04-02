import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answer;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            child: Text(
              answer,
              style: TextStyle(color: Colors.white),
            ),
            onPressed: selectHandler,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
