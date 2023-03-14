import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';
import 'package:quizapp/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function anwserQuestion;
  final int questionIndex;

  const Quiz({
    required this.anwserQuestion,
    required this.questionIndex,
    required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Question(
          questions[questionIndex]['questionText'].toString(),
        ),
        ...((questions[questionIndex]['answers'] as List<Map>).map(
          (answer) {
            return Answers( ()  => anwserQuestion(answer['score']), (answer['text'] as String
            ));
          },
        )),
      ],
    );
  }
}
