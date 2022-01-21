import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';

class Quiz extends StatelessWidget {
  final int indexQuestion;
  final Function answered;
  var questions;
  Quiz(this.questions,this.answered,this.indexQuestion, {Key? key}) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Question(questions[indexQuestion]["Questions"] as String),
              ...(questions[indexQuestion]["Answers"] as List)
                  .map((answer) => Answer(()=>answered(answer["Score"] as int), answer["Answer"]))
              ],
            );
  }
}