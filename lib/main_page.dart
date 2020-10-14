import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Main Page latihan GetX"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Get.to(SecondPage());
            },
            child: Text("Go to Second Page"),
          ),
        ));
  }
}
