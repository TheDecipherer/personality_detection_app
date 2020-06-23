import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function restart;

  Result(this.totalScore, this.restart);

  String get characterType {
    String resultText;
    if (totalScore < 20) {
      resultText = 'You are a Bagan';
    } else {
      resultText =
          'You have passed the psychometric evaluation and you are not a pig!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            totalScore.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text(
            characterType,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          RaisedButton(
            child: Text('Restart test'),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: restart,
          ),
        ],
      ),
    );
  }
}
