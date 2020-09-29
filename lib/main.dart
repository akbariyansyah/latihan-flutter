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
            "Latihan Row dan Column",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Text 1"),
                Text("Text 2"),
                Text("Text 3"),
              ],
            ),    Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Text 4"),
                Text("Text 5"),
                Text("Text 6"),
              ],
            ),    Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Text 7"),
                Text("Text 8"),
                Text("Text 9"),
              ],
            ),
          ],
        ));
    ;
  }
}
