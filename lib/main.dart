import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext contaxt) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromRGBO(100, 150, 200, 70.0),
      appBar: AppBar(
        title: Text('My Quiz App'),
      ),body: Text('this is my default text',
      style:TextStyle(color: Colors.white),),
    ));
  }
}
