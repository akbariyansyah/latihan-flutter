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
        appBar: AppBar(title: Text("Latihan Spacer Widget"),),
        body: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(flex: 1,),
              Container(
                color: Colors.orange,
                height: 80,
                width: 80,
              ),
              Spacer(flex: 3,),

              Container(
                color: Colors.green,
                height: 80,
                width: 80,
              ),
              Spacer(flex: 5),
              Container(
                color: Colors.blue,
                height: 80,
                width: 80,
              ),
              Spacer(flex: 1,),

            ],
          ),
        ),
      ),
    );
  }
}
