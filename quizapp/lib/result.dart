import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if(resultScore <= 8) {
      resultText = "You\'re an awesome person";
    } else if(resultScore <= 12) {
      resultText = "Not bad. Cool maybe";
    } else if(resultScore <= 16) {
      resultText = "Hmmmm, pretty strange";
    } else {
      resultText = "Nahhhhh, you\'re something else";
    }

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
          FlatButton(onPressed: resetHandler, child: Text('Restart Quiz!'))
        ],
      ),
    );
  }
  }
