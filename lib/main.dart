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
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text("Latihan Card Widget"),
          flexibleSpace: Container(
            color: Colors.green,
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              buildCard(Icons.account_balance_wallet, "Balance"),
              buildCard(Icons.add, "Top Up"),
              buildCard(Icons.send, "Transfer"),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String title) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          Icon(
            iconData,
            color: Colors.green,
          ),
          Text(title)
        ],
      ),
    );
  }
}
