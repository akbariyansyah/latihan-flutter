import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///D:/enigma/Flutter/flutter-basic/my_app/myapp/lib/services/auth_services.dart';

class MainPage extends StatelessWidget {
  FirebaseUser user;
  MainPage(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Firebase Authentication"),backgroundColor: Colors.purple,),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text("Hello " + user.uid),
            RaisedButton(onPressed: () async {
              await AuthServices.signOut();
            },child: Text("SIgn Out"),),
          ],

        ),
      ),
    );
  }
}
