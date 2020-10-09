import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/services/auth_services.dart';

class SignUp extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: "sign up",
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 50,
                child: TextField(controller: emailController,decoration: InputDecoration(
                    hintText: "Email..."
                ),),
              ),
              Container(
                width: 200,
                height: 50,
                child: TextField(controller: passwordController,decoration: InputDecoration(
                    hintText: "password..."
                ),),
              ),
              RaisedButton(
                child: Text("Sign in",style: TextStyle(color: Colors.white),),
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
