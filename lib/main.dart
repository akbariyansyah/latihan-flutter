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
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Latihan Anonymouse method",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                counter.toString(),
                style: TextStyle(fontSize: 30),
              ),
            ),
            Center(
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    counter += 1;
                  });
                },
                child: Text("PLUS"),
              ),
            ),     Center(
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    counter -= 1;
                  });
                },
                child: Text("MINUS"),
              ),
            ),
          ],
        ));
  }
}
