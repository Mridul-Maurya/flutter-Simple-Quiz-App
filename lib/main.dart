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
      'questionText': 'What\'s the capital of Uttar Pradesh?',
      'answers': [
        {'text': 'Shimla', 'score': 0},
        {'text': 'Kanpur', 'score': 0},
        {'text': 'Lucknow', 'score': 5},
        {'text': 'Varansi', 'score': 0}
      ]
    },
    {
      'questionText': 'What\'s the capital of Rajsthan?',
      'answers': [
        {'text': 'Jaipur', 'score': 5},
        {'text': 'Udaypur', 'score': 0},
        {'text': 'Kota', 'score': 0},
        {'text': 'Jodhpur', 'score': 0}
      ]
    },
    {
      'questionText': 'What\'s the capital of Madhya Pradesh?',
      'answers': [
        {'text': 'Indaur', 'score': 0},
        {'text': 'Ujjain', 'score': 0},
        {'text': 'Nashik', 'score': 0},
        {'text': 'Bhopal', 'score': 5}
      ]
    },
    {
      'questionText': 'What\'s the capital of Maharastra ?',
      'answers': [
        {'text': 'Indaur', 'score': 0},
        {'text': 'Mumbai', 'score': 5},
        {'text': 'Surat', 'score': 0},
        {'text': 'Pune', 'score': 0}
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
      debugShowCheckedModeBanner: false,
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
            : Result(_totalScore.toString(), _resetQuiz),
      ),
    );
  }
}
