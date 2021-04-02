import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 10) {
      resultText =
          'You are most likely not exposed to the virus keep being careful';
    } else if (resultScore > 10 || resultScore <= 15) {
      resultText =
          'There is a likelyhood that you have been exposed to the virus, do get tested';
    } else {
      resultText =
          'You probably are or might have been exposed to the virus please self isolate and get tested as soon as possible';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 40, color: Colors.blue, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            onPressed: resetHandler,
            child: Text(
              'Reset Quiz',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
