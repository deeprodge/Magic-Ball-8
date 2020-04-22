import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Center(child: Text("Magic 8 Ball !")),
          ),
          body: BallSection(),
        ),
      ),
    );

class BallSection extends StatefulWidget {

  @override
  _BallSectionState createState() => _BallSectionState();
}

class _BallSectionState extends State<BallSection> {
  int ballN=1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Text('Ask me anything and tap on the ball!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[900],
              ),
              ),
            ),
          ],
        ),
        Row(
    children: <Widget>[
        Expanded(child:
          FlatButton(
            onPressed: (){
              setState(() {
                ballN=Random().nextInt(5)+1;
              });
            },
            child: Image.asset('images/ball$ballN.png'),
          ),
        )
    ],),
      ],
    );
  }
}

