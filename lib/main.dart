import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[200],
          appBar: AppBar(
            title: Center(
              child: Text('A.M.A.', style: TextStyle(
                fontSize: 24,
                letterSpacing: 1
              ),),
            ),
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int answerNumber = 1;

  void changeAnswer() {
    setState(() {
      answerNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              changeAnswer();
            },
            child: Image.asset('images/ball$answerNumber.png'),
          ),
        ),
      ],
    );
  }
}
