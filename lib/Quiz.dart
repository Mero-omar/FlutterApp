import 'package:flutter/material.dart';

import 'Answers.dart';
import 'Questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> Questions;
  final int Index;
  final Function(int s) AswerQuestion;

  Quiz(this.Questions, this.Index, this.AswerQuestion);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        questions(Questions[Index]['Question'].toString()),
        ...(Questions[Index]['Answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(
              () => AswerQuestion(int.parse(answer['Score'].toString())),
              answer['text'].toString());
        }).toList(),
      ],
    );
  }
}
