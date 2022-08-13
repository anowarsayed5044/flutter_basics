import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final VoidCallback selectHandler;
  final String answerText;
  final int answerScore;
  const Answer(this.selectHandler, this.answerText, this.answerScore, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: selectHandler,
          child: Text(answerText)
      ),
    );
  }

}