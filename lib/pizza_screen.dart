import 'package:flutter/material.dart';

class PizzaScreen extends StatelessWidget {
  String pizzaTitle = "";
  String imgSrc = "";
  PizzaScreen({required this.pizzaTitle, required this.imgSrc});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.deepOrange,
      ),
      child: Row(
        children: [
          Image(image: AssetImage('$imgSrc'), width: 100, height: 100),
          SizedBox(width: 25.0),
          Text(
            pizzaTitle,
            style: TextStyle(
                fontSize: 28.0,
                color: Colors.white,
                fontFamily: 'Kaushan',
                letterSpacing: 2.5),
          ),
        ],
      ),
    );
  }
}
