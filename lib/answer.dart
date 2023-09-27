import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const Answer({Key key}) : super(key: key);
  final Function selecthandler;
  final String answerText;
  Answer(this.selecthandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 143, 137, 54)),
        // color: Colors.blue,
        child: Text(answerText),

        onPressed: selecthandler,
      ),
    );
  }
}
