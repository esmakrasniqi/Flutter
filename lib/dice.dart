import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:quickalert/quickalert.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text("Dice game"),
            centerTitle: true,
            backgroundColor: Colors.black12,
          ),
          body: Dice()),
    );
  }
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);
  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
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
        winner = "Both players";
      }
      QuickAlert.show(
        context: context,
        type: QuickAlertType.info,
        text: "Winner: ${winner}!",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  'Player 1',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 100.0,
                  child: Divider(
                    color: Colors.white,
                    thickness: 2.0,
                  ),
                ),
                Image.asset(
                  "images/dice${dice_1}.png",
                  height: 100,
                  width: 100,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Player 1',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 100.0,
                  child: Divider(
                    color: Colors.white,
                    thickness: 2.0,
                  ),
                ),
                Image.asset(
                  "images/dice${dice_2}.png",
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(150.0, 15.0),
                backgroundColor: Colors.white,
                foregroundColor: Colors.blueGrey,
              ),
              onPressed: update,
              child: Text("Play"),
            )
          ],
        )
      ],
    );
  }
}
