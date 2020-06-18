import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite animal?',
      'What is your favorite color?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Question('My first app'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex],
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  child: Question('Answer 1'),
                  onPressed: _answerQuestion,
                ),
                RaisedButton(
                  child: Question('Answer 2'),
                  onPressed: () => print('Answer 2 chosen'),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  child: Question('Answer 3'),
                  onPressed: () {
                    print('Answer 3 chosen');
                  },
                ),
                RaisedButton(
                  child: Question('Answer 4'),
                  onPressed: _answerQuestion,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
