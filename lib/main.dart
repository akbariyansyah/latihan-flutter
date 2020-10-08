import 'package:division/division.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/custom_button.dart';
import 'package:myapp/styles/custom_style.dart';

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
        title: Txt(
          "Latihan Division",
          style: CustomStyle.textStyle.clone()
            ..fontSize(25)
            ..italic(),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            CustomButton(CustomStyle.buttonStyle),
            SizedBox(
              height: 10,
            ),
            CustomButton(CustomStyle.buttonStyle.clone()
              ..background.color(Colors.amber)
              ..border(all: 2, color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
