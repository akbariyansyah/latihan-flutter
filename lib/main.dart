import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Color color1 = Hexcolor("#333366");
  Color color2 = Hexcolor("#40e0d0 ");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.adb,
            color: Colors.white,
          ),
          title: Text(
            "Latihan Image",
            style: TextStyle(color: Colors.white),
          ),
          
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Image(image: AssetImage("assets/image-1.jpg")),
          ),
        ),
      ),
    );
  }
}
