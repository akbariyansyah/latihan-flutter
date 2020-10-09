import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/ui/login_page.dart';
import 'package:myapp/ui/signup_page.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: "login",
                child: RaisedButton(
                  color: Colors.purple,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) => LoginPage()));
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Hero(
                tag: "sign up",
                child: RaisedButton(
                  color: Colors.amber,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) => SignUp()));

                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
