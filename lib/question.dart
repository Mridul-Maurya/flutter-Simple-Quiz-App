import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20.0),
      child: Text(
        questionText,
        style: GoogleFonts.lato(fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
