import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Profile"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 50.0, //make container full screen
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80'),
              radius: 75.0,
              backgroundColor: Colors.transparent,
            ),
            Text(
              "Esma Krasniqi",
              style: TextStyle(fontFamily: 'Pacifico', fontSize: 24.0),
            ),
            Text(
              "Software Engineer",
              style: TextStyle(fontFamily: 'SourceSansPro', fontSize: 20.0),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.green,
                    size: 30,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    "+383 46 118 979",
                    style:
                        TextStyle(fontFamily: 'SourceSansPro', fontSize: 20.0),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email_outlined,
                    color: Colors.blue,
                    size: 30,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    "krasniqiesma@gmail.com",
                    style:
                        TextStyle(fontFamily: 'SourceSansPro', fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
