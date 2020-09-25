import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController textController =
      TextEditingController();
  TextEditingController passController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Text Field"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.blue[50],
                  filled: true,
                  icon: Icon(Icons.text_fields),
                  prefixIcon: Icon(Icons.perm_identity),
                  hintText: "username : ",
                  hintStyle: TextStyle(fontStyle: FontStyle.italic),
                  prefixStyle: TextStyle(color: Colors.blue,fontWeight: FontWeight.w400),
                  labelText: "Username",
                  labelStyle: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                ),
                maxLength: 8,
                controller: textController,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.blue[50],
                  filled: true,
                  icon: Icon(Icons.text_fields),
                  prefixIcon: Icon(Icons.security),
                  hintText: "password : ",
                  hintStyle: TextStyle(fontStyle: FontStyle.italic),
                  prefixStyle: TextStyle(color: Colors.blue,fontWeight: FontWeight.w400),
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                ),
                maxLength: 8,
                controller: passController,
              ),
              Text(textController.text),
            ],
          ),
        ),
      ),
    );
  }
}
