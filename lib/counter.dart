import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [MyCounter()],
        ),
      ),
    );
  }
}

class MyCounter extends StatefulWidget {
  const MyCounter({Key? key}) : super(key: key);

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int _counter = 0;

  void counter_plus() {
    this.setState(() {
      if (_counter < 10) {
        _counter++;
      }
    });
    print("$_counter");
  }

  void counter_minus() {
    this.setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
    print("$_counter");
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: counter_plus,
          child: Container(
            margin: EdgeInsets.only(left: 15.0),
            width: 75,
            height: 75,
            child: Center(
              child: Text(
                "+",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 55.0,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        Container(
          height: 75.0,
          width: 75.0,
          child: Center(
            child: Text(
              "$_counter",
              style: TextStyle(
                fontSize: 55.0,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: counter_minus,
          child: Container(
            margin: EdgeInsets.only(right: 15.0),
            width: 75,
            height: 75,
            child: Center(
              child: Text(
                "-",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 55.0,
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(10.0)),
          ),
        )
      ],
    );
  }
}
