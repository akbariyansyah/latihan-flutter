import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController textController = TextEditingController(text: "no Name");
  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("name", textController.text);
  }
  Future<String> getName() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("name") ?? "no name iserted";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Shared Preferences"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              controller: textController,
            ),
          ),
          RaisedButton(
            onPressed: () {
              saveData();
            },
            child: Text("SAVE DATA"),
          ),
          RaisedButton(
            onPressed: () {
              getName().then((value) {
                setState(() {
                textController.text = value;
                });
              });
            },
            child: Text("LOAD DATA"),
          ),
        ],
      ),
    );
  }
}
