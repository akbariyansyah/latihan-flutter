import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/person.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  Person person = Person(name: "Danii",role: "Programmer");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Doc Document"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(person.name,style: TextStyle(fontSize: 30),),
              Text(person.role,style: TextStyle(fontSize: 30),),
            ],
          ),
        ),
      ) ,
    );
  }
}
