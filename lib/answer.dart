import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback
      selectHandler; //Function can be use in place of voidcallback
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: //ButtonStyle(
            //backgroundColor: MaterialStateProperty.all(Colors.pink),
            ElevatedButton.styleFrom(
          foregroundColor: Colors.redAccent, //change background color of button
          backgroundColor: Colors.black, //change text color of button
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
