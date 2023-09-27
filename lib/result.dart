import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({Key key}) : super(key: key);
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'Chakka sala';
    } else if (resultScore <= 17) {
      resultText = 'Every average engineer ever';
    } else if (resultScore <= 25) {
      resultText = 'Tu marne wala hai';
    } else
      (resultText = 'Thare liye kuch na sai maare paas');
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Restart Quiz'),
            style: TextButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 238, 140, 12),
            ),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
