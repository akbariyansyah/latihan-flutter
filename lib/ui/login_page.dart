import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/ui/main_page.dart';
import 'file:///D:/enigma/Flutter/flutter-basic/my_app/myapp/lib/services/auth_services.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);
    return (firebaseUser == null) ? Hero(
      tag: "login",
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.purple,
          body: Center(
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 50,
                    child: TextField(
                      controller: emailController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: "Email..."),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: "password..."),
                    ),
                  ),
                  RaisedButton(
                    child: Text(
                      "Sign in",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.amber,
                    onPressed: () {
                      AuthServices.signIn(
                          emailController.text, passwordController.text);
                      // if (firebaseUser != null) {
                      //   Navigator.pushReplacement(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => MainPage(firebaseUser)));
                      // }
                    },
                  ),
                  RaisedButton(
                    child: Text(
                      "Login anonymouse",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.purple,
                    onPressed: () {
                      AuthServices.signInAnonymouse();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ) : MainPage(firebaseUser);
  }
}
