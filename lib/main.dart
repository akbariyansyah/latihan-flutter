import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Button Gradation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                color: Colors.amber,
                onPressed: () {},
                shape: StadiumBorder(),
                child: Text("Raised Button"),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: )
                ),
                child: Material(
                  child: InkWell(
                    child: Text("Custom Button"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
