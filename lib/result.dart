import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  String get resultPhrase {
    var resultText = 'You did it Congrats';
    if (resultScore <= 12) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange!!';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  const Result(this.resultScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: () => resetHandler(),
            child: Text('Restart quiz'),
          )
        ],
      ),
    );
  }
}
