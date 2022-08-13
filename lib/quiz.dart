import 'package:flutter/cupertino.dart';

import 'package:flutter_basics/question.dart';
import 'package:flutter_basics/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  const Quiz({Key? key, required this.questions, required this.answerQuestion, required this.questionIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]["question"] as String),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answerQuestion, answer["text"] as String, answer["score"] as int);
        }).toList()
      ],
    );
  }
}
