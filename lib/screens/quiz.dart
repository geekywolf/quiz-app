import 'package:flutter/material.dart';

import '../answer.dart';
import '../question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ), //.elementAt(0)
        SizedBox(
          height: 20,
        ),
        ...(questions[questionIndex]['answerText'] as List<Map<String, Object>>)
            .map((answerText) {
          return Answer(
              () => answerQuestion(answerText['score']), answerText['text']);
        }),
      ],
    );
  }
}
