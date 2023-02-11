import 'dart:ffi';

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState(); //_MyAppState for public to private
  }
}

class _MyAppState extends State<_MyApp> {
  //changing to _MyAppState converts it from public to private class
  static const questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'What\'s your favorite Phone?',
      'answers': [
        {'text': 'Ipone', 'score': 5},
        {'text': 'Redmi', 'score': 7},
        {'text': 'Realme', 'score': 8},
        {'text': 'Oppo', 'score': 0},
      ],
    },
  ];
  int questionIndex = 0;
  int totalScore = 0;
  //int score = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore = totalScore + score;
    print("Score");
    print(score);
    print("totalScore");
    print(totalScore);

    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values.
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    if (questionIndex < questions.length) {
      print('We have more question');
    } else {
      print('No more question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
