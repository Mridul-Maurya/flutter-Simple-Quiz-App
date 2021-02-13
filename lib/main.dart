import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s is your fevorite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s is your fevorite Animal?',
      'answers': ['Horese', 'Cat', 'Dog', 'Loin']
    },
    {
      'questionText': 'What\'s is your fevorite bird?',
      'answers': ['Peekock', 'Parrot', 'Sparrow', 'Kingfisher']
    },
    {
      'questionText': 'What\'s is your fevorite fruit?',
      'answers': ['Mango', 'Apple', 'Banana', 'Grapes']
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < questions.length) {
      print('we have more question');
    } else {
      print('question khatm');
    }
  }

  @override
  Widget build(BuildContext contaxt) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('My Quiz App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[_questionIndex]['questionText']),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it'),
              ),
      ),
    );
  }
}
