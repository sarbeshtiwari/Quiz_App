import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      questionText; // final keyword is used to tell that this value is final

  Question(this.questionText); //positional argument

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
