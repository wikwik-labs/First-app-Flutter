import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    _questionIndex += 1;
    setState(() {
      _questionIndex =
          _questionIndex > 1 ? _questionIndex = 0 : _questionIndex = 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var list = [
      "What \'s your favorite color?",
      "What \'s your favorite animal ?"
    ];
    var questions = list;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => print('answerClicked !'),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
