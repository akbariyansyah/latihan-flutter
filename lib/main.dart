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

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Latihan Container",
          ),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: Text(
              "Hi , I'm a Container",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.amber,

            ),
          ),
        ));
    ;
  }
}
