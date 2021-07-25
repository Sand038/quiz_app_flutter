import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> _questions;
  final Function _answerForQuestion;
  final int _questionIndex;

  Quiz(this._questions, this._answerForQuestion, this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_questions[_questionIndex]['questionText']),
        ...(_questions[_questionIndex]['answers'] as List<Map<String, Object>>)
            .map((e) => Answer(() => _answerForQuestion(e['score']), e['text']))
            .toList(),
      ],
    );
  }
}
