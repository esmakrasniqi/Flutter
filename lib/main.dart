import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green[400],
          title: Text("Hello World"),
        ),
        body: Center(
          child: Column(
            children: const [
              Text(
                "Hello World!",
                style: TextStyle(
                  fontFamily: 'Kaushan',
                  fontSize: 28.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Image(
                //   image: NetworkImage(
                // 'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80'),
                image: AssetImage('images/img.jpg'),
                height: 500,
                width: 250,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey,
      ),
    ),
  );
}

// SafeArea(
// child: Center(
// child: Text('Hello World'),
// ),
// ),
