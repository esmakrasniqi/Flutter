import 'package:flutter/material.dart';
import './pizza_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("MENU"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            PizzaScreen(
                pizzaTitle: 'Vegetable Pizza',
                imgSrc: 'images/VegetablePZ.png'),
            PizzaScreen(
                pizzaTitle: 'Cheese Pizza', imgSrc: 'images/cheesePZ.png'),
            PizzaScreen(pizzaTitle: 'Box of fries', imgSrc: 'images/Fries.png')
          ],
        ),
      ),
    );
  }
}
