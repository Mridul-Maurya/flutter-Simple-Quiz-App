import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      padding: EdgeInsets.all(5),
      
      child: SizedBox(
        width: 380,
        height: 50,
        
        child: FlatButton(
          highlightColor: Colors.amberAccent,
          shape: new RoundedRectangleBorder(
              side: BorderSide(
                  width: 1, color: Colors.grey, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30)),
          child: Text(answerText),
          onPressed: selectHandler,
        ),
      ),
    );
  }

  
}
