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
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Latihan Statefull WIdget",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: (isPressed)
                  ? Icon(
                      Icons.adb,
                      size: 80,
                      color: Colors.red,
                    )
                  : Text(""),
            ),
            Center(
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    isPressed = !isPressed;
                  });
                },
                child: Text("Click Me"),
              ),
            ),
          ],
        ));
  }
}
