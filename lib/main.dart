import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

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
      {
        'question': 'What is your favorite animal?',
        'answer': ['Lion', 'Fox', 'Elephant', 'Deer']
      },
      {
        'question': 'What is your favorite color?',
        'answer': ['Black', 'White', 'Red', 'Blue']
      },
      {
        'question': 'Who\'s your favorite instructor?',
        'answer': ['Andrew', 'Max', 'Angela', 'Bagan']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['question'],
            ),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
