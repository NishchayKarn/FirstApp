import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function(int) answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});
  //const Quiz({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Question(questions[questionIndex]['questionText'] ),
          ...(questions[questionIndex]['answer'] as List<Map<String, Object>>).map((answer) {
             return Answer(() => answerQuestion(answer['score']),
             answer['text']);
          }).toList()
        ],
      );
}
