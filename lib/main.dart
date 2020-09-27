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
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This is working"),
      ),
    );
  }
}
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Latihan TabBar"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.comment),
                text: "Comments",
              ),
              Tab(child: Image(image: AssetImage("assets/cute.png"))),
              Tab(
                icon: Icon(Icons.computer),
              ),
              Tab(
                text: "News",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Center(child: Text("Tab pertama")),
          Center(child: Text("Tab kedua")),
          Center(child: Text("Tab ketiga")),
          Center(child: Text("Tab keempat")),
        ]),
      ),
    );
  }
}
