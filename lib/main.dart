import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colorful_button.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Colorfull Button"),),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorFulButton(Colors.pink,Colors.blue,Icons.adb),
              ColorFulButton(Colors.cyan,Colors.green,Icons.ac_unit),
              ColorFulButton(Colors.yellow,Colors.deepOrange,Icons.accessibility_new),
              ColorFulButton(Colors.green,Colors.red,Icons.camera),
            ],
          ),
        ),
      ),
    );
  }
}
