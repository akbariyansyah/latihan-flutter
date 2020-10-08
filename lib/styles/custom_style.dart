import 'package:division/division.dart';
import 'package:flutter/material.dart';

abstract class CustomStyle {
  static ParentStyle buttonStyle = ParentStyle(angleFormat: AngleFormat.degree)
    ..background.color(Colors.lightBlue[300])
    ..borderRadius(all: 20)
    ..border(all: 5, color: Colors.lightBlue)
    ..elevation(5)
    ..margin(top: 30)
    ..padding(left: 20, right: 20, top: 15, bottom: 15)
    ..rotate(10)..ripple(true,splashColor: Colors.green);

  static TxtStyle textStyle = TxtStyle()
    ..fontFamily("Lato")
    ..fontSize(30)
    ..bold()
    ..textColor(Colors.white);
}
