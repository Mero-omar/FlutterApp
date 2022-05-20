import 'package:flutter/material.dart';

// class questions extends StatefulWidget {
//   const questions({ Key? key }) : super(key: key);
//   @override
//   State<questions> createState() => _questionsState();
// }

class questions extends StatelessWidget {
  final String QuestionText;

  questions(this.QuestionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        QuestionText,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
