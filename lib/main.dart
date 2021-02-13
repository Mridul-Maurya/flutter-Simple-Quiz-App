import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                Text('The question!'),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: null,
                ),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: null,
                ),
                RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: null,
                ),
              ],
            )));
  }
}
