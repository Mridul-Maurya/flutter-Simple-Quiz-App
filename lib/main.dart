import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  final _questions = const [
    {
      'questionText': 'What\'s is your fevorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'white', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s is your fevorite Animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 3},
        {'text': 'Cow', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s is your fevorite bird?',
      'answers': [
        {'text': 'Parrot', 'score': 10},
        {'text': 'Kingfisher', 'score': 5},
        {'text': 'Pecok', 'score': 3},
        {'text': 'Sparrow', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s is your fevorite fruit?',
      'answers': [
        {'text': 'Apple', 'score': 10},
        {'text': 'Mango', 'score': 5},
        {'text': 'Grapes', 'score': 3},
        {'text': 'Banana', 'score': 1}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < _questions.length) {
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
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
