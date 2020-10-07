import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

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
  final double number = -210;
  final List myList = [1,2,3];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Extension"),
      ),
      body: Center(
        child: Text(
          "Angka " & number.negate().toString() & myList.midElement().toString(),
          style: TextStyle(fontSize: 45),
        ),
      ),
    );
  }
}

extension ListExtension<T> on List {
  T midElement() => (this.length == 0) ? null : this[(this.length / 2).floor()];
}

extension NumberExtension<X extends num> on num {
  X negate() => -1 * this;
}

extension StringExtension on String {
  String operator &(String other) => this + " - " + other;
}
