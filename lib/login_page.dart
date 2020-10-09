import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/auth_services.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Firebase"),
      ),
      body: Center(
        child: Column(
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
              child: Text("Sign Up",style: TextStyle(color: Colors.white),),
              color: Colors.amber,
              onPressed: () {
                AuthServices.signUp(emailController.text, passwordController.text);
              },
            ),
            RaisedButton(
              child: Text("Sign in",style: TextStyle(color: Colors.white),),
              color: Colors.amber,
              onPressed: () {
                AuthServices.signIn(emailController.text, passwordController.text);
              },
            ),
            RaisedButton(
              child: Text("Login anonymouse",style: TextStyle(color: Colors.white),),
              color: Colors.purple,
              onPressed: () {
                AuthServices.signInAnonymouse();
              },
            ),
          ],
        ),
      ),
    );
  }
}
