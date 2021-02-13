import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext contaxt) {
    var questions = [
      'What\'s is your fevorite color?',
      'What\'s is your fevorite animal?',
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: Text('My Quiz App'),
            ),
            body: Column(
              children: [
                Text(questions[_questionIndex]),
                RaisedButton(
                  elevation: 10.0,
                  color: Colors.blueAccent,
                  textColor: Color.alphaBlend(Colors.white, Colors.blue),
                  child: Text('Answer 1'),
                  onPressed: _answerQuestion,
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

