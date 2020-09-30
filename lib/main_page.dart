
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatefulWidget {
  String name;
  MainPage({this.name});
  @override
  _MainPageState createState() => _MainPageState(name: this.name);
}

class _MainPageState extends State<MainPage> {
  String name;
  _MainPageState({this.name});

  void logout() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove("username");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Latihan Shared Preferences"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Hi, " + name,
              style: TextStyle(fontSize: 30),
            ),
            RaisedButton(
              onPressed: () {
                logout();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
              color: Colors.red,
              child: Text(
                "LOG OUT",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
