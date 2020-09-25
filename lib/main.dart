import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Color _color1 = Hexcolor("#00d2ff");
  Color _color2 = Hexcolor("#3a7bd5");
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
              Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 4,
                child: Container(
                  width: 130,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [_color1, _color2],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {},
                      child: Center(
                          child: Text(
                        "Custom Button",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )),
                    ),
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
