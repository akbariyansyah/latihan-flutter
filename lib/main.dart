import 'dart:ui';

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
          title: Text("Latihan Font Features"),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Contoh : Tanpa Features",
                ),
                Text(
                  "Contoh : Small Caps",
                  style: TextStyle(
                      fontSize: 20, fontFeatures: [FontFeature.enable("smcp")]),
                ),
                Text(
                  "Contoh : angka 1/2 :Small Caps dan frac",
                  style: TextStyle(fontSize: 20, fontFeatures: [
                    FontFeature.enable("smcp"),
                    FontFeature.enable("frac")
                  ]),
                  maxLines: 2,
                ),
                Text(
                  "Contoh : Cardo Font 19",
                  style: TextStyle(fontSize: 20, fontFamily: "Cardo"),
                  maxLines: 2,
                ),
                Text(
                  "Contoh : Cardo Font dengan oldstyle 19",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Cardo",
                      fontFeatures: [FontFeature.oldstyleFigures()]),
                  maxLines: 2,
                ),
                Text(
                  "Contoh : Gabriola default 5",
                  style: TextStyle(fontSize: 30, fontFamily: "Gabriola"),
                  maxLines: 2,
                ),
                Text(
                  "Contoh : Gabriola stylistic set 5",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Gabriola",
                    fontFeatures: [
                      FontFeature.oldstyleFigures(),
                      FontFeature.stylisticSet(5)
                    ],
                  ),
                  maxLines: 2,
                ),
                Text(
                  "Contoh : Gabriola stylistic set 10",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Gabriola",
                    fontFeatures: [
                      FontFeature.oldstyleFigures(),
                      FontFeature.stylisticSet(10)
                    ],
                  ),
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ));
  }
}
