import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

 /*  String get resultPhrase {
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
 */
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Center(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Center(
                child: Text('Congratulations!',
                style: TextStyle(color: Colors.green,
                fontSize: 36,
                fontWeight: FontWeight.bold)),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                'Your score is: $resultScore',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 400),
              height: 50.0,
              width: 300,
              child: FlatButton(
                highlightColor: Colors.amberAccent,
                shape: new RoundedRectangleBorder(
                    side: BorderSide(
                        width: 1, color: Colors.grey, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'Restart Quiz',
                  style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                ),
                onPressed: resetHandler,
              ),
            )
          ],
        ),
      ),
    );
  }
}
