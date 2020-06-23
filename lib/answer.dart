import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerSelector;
  final String answer;

  Answer(this.answerSelector, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: RaisedButton(
        child: Text(answer),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: answerSelector,
      ),
    );
  }
}
