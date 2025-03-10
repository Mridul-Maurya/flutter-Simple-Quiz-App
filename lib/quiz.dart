import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';


class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerQuestion});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          Question(questions[questionIndex]['questionText']),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
            return Answer(() => answerQuestion(answer['score']), answer['text']);
          }).toList()
        ],
      ),
    );
  }
}
