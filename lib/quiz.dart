import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        // Answer(answerQuestion),
        // Answer(answerQuestion),
        // Answer(answerQuestion),  //it was done when answers are not selected dynamically
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(
                  answer['score']), // () => answerQuestion(answer['score'])
              answer['text'] as String); // () => anonymous function
        }).toList()
      ],
    );
  }
}
