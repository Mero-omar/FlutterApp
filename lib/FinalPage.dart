import 'package:flutter/material.dart';

class FinalPage extends StatelessWidget {
  final Function() reset;
  final int TotalScore;

  FinalPage(this.reset, this.TotalScore);

  String get resultPharse {
    String ResultText;
    if (TotalScore >= 80) {
      ResultText = "You Are Awesome";
    } else if (TotalScore >= 50) {
      ResultText = "You Are Good";
    } else
      ResultText = "You Are bad";
    return ResultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            resultPharse,
            // "You End the Quiz Successfully !",
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          Text("$TotalScore", style: TextStyle(fontSize: 30)),
          TextButton(
              onPressed: reset,
              child: const Text(
                "Restart The Quiz",
                style: TextStyle(fontSize: 30),
              ))
        ],
      ),
    );
    //floatingActionButton: ,
  }
}
