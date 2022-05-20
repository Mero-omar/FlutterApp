import 'package:flutter/material.dart';
import 'package:quiz_app/Answers.dart';
import 'package:quiz_app/FinalPage.dart';
import 'package:quiz_app/Quiz.dart';
import 'Questions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'َQuiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int TotalScore = 0;
  int Index = 0;

  final List<Map<String, Object>> Questions = [
    {
      'Question': 'What\'s Your Favourite Color ?',
      'Answers': [
        {'text': 'red', 'Score': 10},
        {'text': 'black', 'Score': 20},
        {'text': 'yellow', 'Score': 30},
        {'text': 'green', 'Score': 40},
      ]
    },
    {
      'Question': 'What\'s Your Favourite Animal ?',
      'Answers': [
        {'text': 'Cat', 'Score': 10},
        {'text': 'Dog', 'Score': 20},
        {'text': 'Rabbit', 'Score': 30},
        {'text': 'Elephant', 'Score': 40},
      ]
    },
    {
      'Question': 'What\'s Your Favourite Instructor ?',
      'Answers': [
        {'text': 'Omar', 'Score': 100},
        {'text': 'Mohamed', 'Score': 80},
        {'text': 'Ibrahem', 'Score': 20},
        {'text': 'Khaled', 'Score': 50},
      ]
    },
  ];

  void AswerQuestion(int score) {
    TotalScore += score;
    setState(() {
      Index += 1;
    });
    print(TotalScore);
  }

  void reset() {
    setState(() {
      Index = 0;
      TotalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Container(
          child: Index < Questions.length
              ? Quiz(Questions, Index, AswerQuestion)
              : FinalPage(reset, TotalScore),
        ));
  }
}
