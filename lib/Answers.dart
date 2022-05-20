import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String AnswerText;
  final Function() x;
  Answers(this.x, this.AnswerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(AnswerText),
        onPressed: x,
      ),
    );
  }
}
