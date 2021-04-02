import 'package:flutter/material.dart';

import 'screens/quiz.dart';
import 'screens/result.dart';

void main() => runApp(RefresherApp());

class RefresherApp extends StatefulWidget {
  @override
  _RefresherAppState createState() => _RefresherAppState();
}

class _RefresherAppState extends State<RefresherApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'Do you always wear a mask in public?',
      'answerText': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 2},
      ],
    },
    {
      'questionText': 'Do you wear a face sheild in public?',
      'answerText': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 1},
      ],
    },
    {
      'questionText':
          'Have you been tested for COVID-19 within the past 2 weeks?',
      'answerText': [
        {'text': 'Yes and tested negative', 'score': 0},
        {'text': 'Yes and tested positive', 'score': 3},
        {'text': 'No', 'score': 1},
      ],
    },
    {
      'questionText': 'Have you attended a party or large function recently?',
      'answerText': [
        {'text': 'Yes', 'score': 2},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText':
          'Have you been in contact with some one who tested for COVID-19 in the past 2 weeks?',
      'answerText': [
        {'text': 'Yes', 'score': 5},
        {'text': 'No', 'score': 0},
        {'text': 'I\'m not sure', 'score': 2},
      ],
    },
    {
      'questionText': 'Have you been vaccinated?',
      'answerText': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 1},
      ],
    },
    {
      'questionText': 'Do you wash or sanitise your hands regularly?',
      'answerText': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 2},
      ],
    },
    {
      'questionText': 'Do you follow COVID19 protection guidelines?',
      'answerText': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 2},
      ],
    },
    {
      'questionText': 'Have you been in a COVID19 hotspot area recently?',
      'answerText': [
        {'text': 'Yes', 'score': 3},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': 'Are you a frontline worker?',
      'answerText': [
        {'text': 'Yes', 'score': 2},
        {'text': 'No', 'score': 0},
      ],
    },
  ];

  void answerQuestion(int score) {
    _totalScore += score;

    setState(
      () {
        _questionIndex++;
      },
    );
  }

  void _resetQuiz() {
    setState(
      () {
        _questionIndex = 0;
        _totalScore = 0;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("COVID19 Self Test App")),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
