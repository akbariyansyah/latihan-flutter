import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/person.dart';

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
          title: Text("Latihan Equatable"),
        ),
        body: Container());
  }
}

