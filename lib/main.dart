import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
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

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('There are more questions!');
    } else {
      print('There are no more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(),
      ),
    );
  }
}
