import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/services/auth_services.dart';
import 'package:myapp/services/database_services.dart';
import 'dart:io';
import 'package:provider/provider.dart' as provider;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String imagePath;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan FIrebase Storage"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (imagePath != null)
                  ? Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(imagePath),
                              fit: BoxFit.cover)),
                    )
                  : Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        shape: BoxShape.circle,
                      ),
                    ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () async {
                  AuthServices.signInAnonymouse();
                },
                child: Text("Sign IN"),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () async {
                  var file = await imagePicker();
                  String imageUrl = await DatabaseServices.uploadImage(file);
                  setState(() {
                    imagePath = imageUrl;
                  });
                },
                child: Text("Upload Image"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<File> imagePicker() async {
  return await ImagePicker.pickImage(source: ImageSource.gallery);
}
