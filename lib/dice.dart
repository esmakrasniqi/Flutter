import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dice game"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Dice()],
          ),
        ),
      ),
    );
  }
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);
  @override
  State<Dice> createState() => _MyButtonState();
}

class _MyButtonState extends State<Dice> {
  int dice_1 = 1;
  int dice_2 = 1;
  String winner = '';
  void update() {
    setState(() {
      dice_1 = Random().nextInt(6) + 1;
      dice_2 = Random().nextInt(6) + 1;
      if (dice_1 > dice_2) {
        winner = "Player 1";
      } else if (dice_1 < dice_2) {
        winner = "Player 2";
      } else {
        winner = "equal";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Column(children: [
          Text("Player 1"),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Image(
              image: AssetImage('images/dice$dice_1.png'),
            ),
          ),
        ]),
        Column(children: [
          Text("Player 2"),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Image(
              image: AssetImage('images/dice$dice_2.png'),
            ),
          ),
        ]),
      ]),
      ElevatedButton(
        onPressed: () {
          update();
        },
        child: Text("Play"),
      ),
      Padding(
        padding: const EdgeInsets.all(30.0),
        child: Text(
          "Winner is: $winner",
          style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontWeight: FontWeight.bold,
              color: Colors.blue),
        ),
      )
    ]);
  }
}
