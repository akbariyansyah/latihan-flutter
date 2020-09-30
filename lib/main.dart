import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/login_page.dart';
import 'package:myapp/main_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name;
  _MyAppState() {
    getName().then((value) {
      setState(() {
        name = value;
      });
    });
  }
  Future<String> getName() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    print(pref.getString("username"));
    return pref.getString("username") ?? "no name inserted";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: (name == null || name == "no name inserted")
            ? LoginPage()
            : MainPage(name: name));
  }
}
