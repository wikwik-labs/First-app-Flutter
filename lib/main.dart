import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex++;
    });
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'questionText': "What \'s your favorite color ?",
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1}
        ]
      },
      {
        'questionText': "What \'s your favorite animal ?",
        'answers': [
          {'text': 'Cat', 'score': 1},
          {'text': 'Dog', 'score': 1},
          {'text': 'Horse', 'score': 1},
          {'text': 'lion', 'score': 1}
        ]
      },
      {
        'questionText': "who\'s your favorite instructor ?",
        'answers': [
          {'text': 'Max', 'score': 1},
          {'text': 'Manu', 'score': 1},
          {'text': 'Fery', 'score': 1},
          {'text': 'Reza', 'score': 1}
        ]
      },
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questions: _questions,
                    questionIndex: _questionIndex,
                  )
                : Result(
                    resetQuiz: _resetQuiz,
                    resultScore: _totalScore,
                  )));
  }
}
