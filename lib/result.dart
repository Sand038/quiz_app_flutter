import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final Function _resetQuiz;

  Result(this._totalScore, this._resetQuiz);

  String getResult() {
    String resultText;
    if (_totalScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (_totalScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (_totalScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            getResult(),
            style: TextStyle(color: Colors.teal, fontSize: 36),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: _resetQuiz, child: Text('Return to home'))
        ],
      ),
    );
  }
}
