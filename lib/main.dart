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
            children: [
              Image(
                //   image: NetworkImage(
                // 'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80'),
                image: AssetImage('images/img.jpg'),
                height: 250,
                width: 250,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80'),
                radius: 75.0,
                backgroundColor: Colors.transparent,
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  print('Hello World');
                },
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75.0),
                  ),
                  child: Image(
                    image: AssetImage('images/img.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
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
