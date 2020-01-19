import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result({
    @required this.resultScore,
    @required this.resetQuiz
  });

  String get resultPhrase {
    String resultText = 'You did it !';
    if (resultScore <= 8) {
      resultText = 'You\'re awesome and innoncent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 12) {
      resultText = 'You\'re stange !';
    } else {
      resultText = 'You\'re so bad !';
    }
    return resultText;
  }

  String get score {
    return 'Your Score is : ' + resultScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(score,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black38),),
        Text(
          resultPhrase,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        FlatButton(child: Text('Restart Quiz', style: TextStyle(color: Colors.blueAccent),), onPressed: resetQuiz,)
      ],
    ));
  }
}
