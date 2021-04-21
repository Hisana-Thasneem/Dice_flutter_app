import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int leftNum;
  int rightNum;
  int leftnum() {
    leftNum = Random().nextInt(6) + 1;
  }

  int rightnum() {
    rightNum = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[700],
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        centerTitle: true,
        title: Text(
          'Dicee',
          style: TextStyle(
            fontFamily: 'new2',
            letterSpacing: 5.0,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(80.0),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rightnum();
                      leftnum();
                    });
                  },
                  child: Image.asset('images/dice$leftNum.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(80.0),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rightnum();
                      leftnum();
                    });
                  },
                  child: Image.asset('images/dice$rightNum.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
