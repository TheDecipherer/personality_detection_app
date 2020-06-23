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
  var _totalScore = 0;

  final _questions = const [
    {
      'question': 'What is your favorite animal?',
      'answer': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Fox', 'score': 5},
        {'text': 'Elephant', 'score': 2},
        {'text': 'Deer', 'score': 0}
      ]
    },
    {
      'question': 'What is your favorite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 2},
        {'text': 'White', 'score': 0}
      ]
    },
    {
      'question': 'Who\'s your favorite instructor?',
      'answer': [
        {'text': 'Andrew', 'score': 10},
        {'text': 'Max', 'score': 5},
        {'text': 'Angela', 'score': 2},
        {'text': 'Bagan', 'score': 0}
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

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

  void _restartTest() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
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
            : Result(_totalScore, _restartTest),
      ),
    );
  }
}
