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
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Text('Menu'),
            centerTitle: true,
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
              Container(
                width: 75,
                height: 50,
                color: Colors.blue,
              ),
              Container(
                width: 100,
                height: 50,
                color: Colors.green,
              ),
              Container(
                height: double.infinity,
                width: 0, //make container full screen
              ),
            ],
          )),
    );
  }
}

Card getCard() {
  return Card(
    child: ListTile(
      leading: Icon(Icons.add),
      title: Text('Title'),
      subtitle: Text('subtitle'),
      trailing: Icon(Icons.remove),
    ),
    margin: EdgeInsets.all(10.0),
  );
}

Container getContainer() {
  return Container(
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
  );
}
