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
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Latihan Gesture Detector & Animated Container",
            maxLines: 2,
          ),
        ),
        body: GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: Center(
            child: AnimatedContainer(
              color: Color.fromARGB(255, random.nextInt(256), random.nextInt(256), random.nextInt(256)),
              duration: Duration(seconds: 1),
              width: 50.0 + random.nextInt(251),
              height: 50.0 + random.nextInt(251),
            ),
          ),
        ));
  }
}
