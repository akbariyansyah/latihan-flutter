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
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(

            children: [
              Container(
                width: 200,
                height: 50,
                child: TextField(
                  controller: emailController,

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
              SizedBox(height: 20,),
              // Container(
              //   width: 200,
              //   height: 50,
              //   child: TextField(controller: emailController,decoration: InputDecoration(
              //       hintText: "Email..."
              //   ),),
              // ),
              // Container(
              //   width: 200,
              //   height: 50,
              //   child: TextField(controller: passwordController,decoration: InputDecoration(
              //       hintText: "password..."
              //   ),),
              // ),
              RaisedButton(
                child: Text("Sign up",style: TextStyle(color: Colors.white),),
                color: Colors.amber,
                onPressed: () {
                  AuthServices.signUp(emailController.text, passwordController.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
