import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Latihan QR CODE"),
        ),
        body: Center(
          child: Column(
            children: [
                 Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  
                  controller: textController,

                ),
              ),
              RaisedButton(onPressed: () {
                setState(() { });
              },child: Text("Generate QR"),color: Colors.amber,),
              QrImage(
                version: 6,
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                errorCorrectionLevel: QrErrorCorrectLevel.M,
                padding: EdgeInsets.all(20),
                size: 200.00,
                data: textController.text,
              ),
           
            ],
          ),
        ));
  }
}
