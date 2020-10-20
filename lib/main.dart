import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  int money = 1000000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Latihan Format Currency "),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "normal",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              money.toString(),
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 10,),
             Text(
              "long currency",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              NumberFormat.currency(locale: "id",symbol: "Rp ",decimalDigits: 0).format(money),
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 10,),
             Text(
              "compact currency",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              NumberFormat.compactCurrency(locale: "id",decimalDigits: 0).format(money + 35000),
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),),);
  }
}
