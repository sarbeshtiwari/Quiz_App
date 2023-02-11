import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    //getter
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... Strange?!';
    } else {
      resultText = 'You are bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Restart Quiz!'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
