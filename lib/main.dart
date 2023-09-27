import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// import './question.dart';
// import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questions = [
    {
      'questionText': 'What\'s your favourite colour?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Yellow', 'score': 5},
        {'text': 'White', 'score': 2}
      ],
    },
    {
      'questionText': 'Whats\'s your favourite animal?',
      'answer': [
        {'text': 'Dog', 'score': 2},
        {'text': 'Cat', 'score': 5},
        {'text': 'Snake', 'score': 8},
        {'text': 'Tiger', 'score': 10}
      ],
    },
    {
      'questionText': 'Who is Your favourite actress?',
      'answer': [
        {'text': 'Priyanka(2000\'s)', 'score': 4},
        {'text': 'Madhuri(1990\'s)', 'score': 6},
        {'text': 'Sridevi(1980\'s)', 'score': 8},
        {'text': 'Hema(1970\'s)', 'score': 10},
      ],
    },
  ];
  var questionIndex = 0;
  var _totalScore = 0;

void _resetQuiz (){
  setState(() {
    questionIndex=0;
_totalScore=0;
  });

}

  void answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      questionIndex = questionIndex + 1;
      print(questionIndex);
      if (questionIndex < _questions.length) {
        print('we have more questions!');
      } else {
        print('No more questions!');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: questionIndex < _questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
