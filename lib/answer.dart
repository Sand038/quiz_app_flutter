import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _answerForQuestion;
  final String _answer;

  Answer(this._answerForQuestion, this._answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _answerForQuestion,
        child: Text(_answer),
      ),
    );
  }
}
