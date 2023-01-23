import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

Text getText() {
  return Text(
    'Hello World',
    style: TextStyle(
      fontSize: 25.0,
    ),
  );
}

Icon getIcon() {
  return Icon(
    Icons.shopping_bag,
    color: Colors.green,
    size: 50,
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Container Widget'),
          centerTitle: true,
        ),
        body: Container(
          // color: Colors.white,
          child: getIcon(),
          width: 250,
          height: 250,
          margin: EdgeInsets.only(top: 10, right: 14, bottom: 20, left: 25),
          padding: EdgeInsets.all(50.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 5.0),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
