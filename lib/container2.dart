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
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Menu'),
          centerTitle: true,
        ),
        body: Container(
          // color: Colors.white,
          child: Row(
            children: const [
              Image(
                image: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/2927/2927347.png'),
                height: 50,
                width: 50,
              ),
              SizedBox(
                width: 25,
              ),
              Text(
                "Pizza",
                style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          padding: EdgeInsets.all(15.0),
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.orange,
            border: Border.all(width: 5.0, color: Colors.transparent),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
