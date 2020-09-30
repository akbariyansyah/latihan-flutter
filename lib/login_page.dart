import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/main_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController textController = TextEditingController();

  void login() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("username", textController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 140, 20, 0),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: textController,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  login();
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return MainPage(name: textController.text,);
                  }));
                },
                color: Colors.amber,
                child: Text("LOGIN"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
