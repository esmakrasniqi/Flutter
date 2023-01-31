import 'package:flutter/material.dart';

void main() => runApp(MyApp());

void clickMe() => print("You clicked a button");

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Buttons"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                onPressed: clickMe,
                child: Text("Elevated button!"),
              ),
              ElevatedButton.icon(
                onPressed: clickMe,
                icon: Icon(Icons.save),
                label: Text('Elevated icon button!'),
              ),
              IconButton(
                onPressed: clickMe,
                icon: Icon(Icons.add),
                color: Colors.green,
                iconSize: 65,
                splashRadius: 25.0,
              ),
              MyButton(),
              OutlinedButton(
                onPressed: clickMe,
                child: Text("Outlined button"),
              ),
              MyDropdown(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Floating action button!");
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);
  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: this.isSelected ? Colors.orange : Colors.greenAccent,
      ),
      onPressed: () {
        this.setState(() {
          this.isSelected = !isSelected;
        });
      },
      child: Text("Click ME!"),
    );
  }
}

class MyDropdown extends StatefulWidget {
  const MyDropdown({Key? key}) : super(key: key);
  @override
  State<MyDropdown> createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  String? _value = "-1";
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        items: [
          DropdownMenuItem(child: Text("select"), value: "0"),
          DropdownMenuItem(child: Text("Item 1"), value: "1"),
          DropdownMenuItem(child: Text("Item 2"), value: "2"),
          DropdownMenuItem(child: Text("Item 3"), value: "3"),
          DropdownMenuItem(child: Text("Item 4"), value: "4"),
        ],
        onChanged: (_value) {
          print(_value);
        });
  }
}
