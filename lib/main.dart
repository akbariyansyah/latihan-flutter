import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> list = [];

  _MainPageState() {
    for (int i = 1; i <= 40; i++) {
      list.add(Text(
        "Tulisan ke-$i",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500,color: Colors.black),
      ));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Latihan Listview",
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: list,
          )
        ],
      )
    );
  }
}
