import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.black26;
  bool isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Latihan Stack dan Alignment"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Draggable<Color>(
                    data: color1,
                    child: SizedBox(
                      width: 80,
                      height: 80,
                      child: Material(
                        color: color1,
                        shape: StadiumBorder(),
                        elevation: 3.0,
                      ),
                    ),
                    childWhenDragging: SizedBox(
                      width: 80,
                      height: 80,
                      child: Material(
                        color: color2,
                        shape: StadiumBorder(),
                        elevation: 3.0,
                      ),
                    ),
                    feedback: SizedBox(
                      width: 80,
                      height: 80,
                      child: Material(
                        color: color1.withOpacity(0.5),
                        shape: StadiumBorder(),
                        elevation: 3.0,
                      ),
                    ),
                  ),
                  DragTarget<Color>(
                    onWillAccept: (value) => true,
                    onAccept: (value) => isAccepted = true,
                  )
                ],
              )
            ],
          )),
    );
  }
}
