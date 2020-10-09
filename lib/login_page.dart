import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/auth_services.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Firebase"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Login",style: TextStyle(color: Colors.white),),
          color: Colors.purple,
          onPressed: () {
            AuthServices.signInAnonymouse();
          },
        ),
      ),
    );
  }
}
