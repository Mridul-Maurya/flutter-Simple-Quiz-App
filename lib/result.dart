import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and Innocent';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likable';
    } else if (resultScore <= 16) {
      resultText = 'You are .... Strange';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              resultPhrase,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 450, 0, 0),
              child: FlatButton(
                child: Text(
                  'Restart Quiz',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blueAccent
                  ),
                ),
                onPressed: resetHandler,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
