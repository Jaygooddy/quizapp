import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:quizapp/answer.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';
import './question.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myhome(),
    );
  }
}

class Myhome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyhomeState();
  }
}

class _MyhomeState extends State {
  final questions = const [
    {
      'questionText': "what's your favourite color?",
      'answers': [
        {'text': 'Green', 'score': 5},
        {'text': 'Blue', 'score': 3},
        {'text': 'Black', 'score': 2},
        {'text': 'Purple', 'score': 1},
        {'text': 'none', 'score': 0},
      ],
    },
    {
      'questionText': "what's you favourite animal?",
      'answers': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Snake', 'score': 3},
        {'text': 'Elephant', 'score': 2},
        {'text': 'Lion', 'score': 1},
        {'text': 'none', 'score': 0},
      ],
    },
    {
      'questionText': "who's your favorite instructor?",
      'answers': [
        {'text': 'Angela Yu', 'score': 5},
        {'text': 'Max Schinanegan', 'score': 3},
        {'text': 'Smart Herd', 'score': 2},
        {'text': 'Traversy Media', 'score': 1},
        {'text': 'none', 'score': 0},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
       _questionIndex = 0;
    _totalScore = 0;
    });
   
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('QuizApp'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                anwserQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: questions,
              )
            : Result(_totalScore, _resetQuiz));
  }
}
