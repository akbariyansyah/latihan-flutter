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
  TabBar myTabBar = TabBar(
    indicator: BoxDecoration(
        color: Colors.red,
        border: Border(top: BorderSide(color: Colors.black, width: 5))),
    tabs: [
      Tab(
        icon: Icon(Icons.comment),
        text: "Comments",
      ),
      Tab(child: Image(image: AssetImage("assets/cute.png"))),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            elevation: 10,
            backgroundColor: Colors.pink[300],
            title: Text("Latihan TabBar"),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                child: Container(color: Colors.pink[300], child: myTabBar))),
        body: TabBarView(children: [
          Center(child: Text("Tab pertama")),
          Center(child: Text("Tab kedua")),
        ]),
      ),
    );
  }
}
