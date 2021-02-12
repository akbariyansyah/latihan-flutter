import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isStop = true;
  bool isBlack = true;
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: (isBlack) ? Colors.black : Colors.red,
            title: Text("Latihan Timer"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  counter.toString(),
                  style: TextStyle(
                      fontSize: 50,
                      color: (isBlack) ? Colors.black : Colors.red),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  child: Text("Ubah warna 3 detik kemudian"),
                  onPressed: () {
                    Timer(Duration(seconds: 3), () {
                      setState(() {
                        isBlack = !isBlack;
                      });
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  child: Text("Ubah warna secara langsung"),
                  onPressed: () {
                    Timer.run(() {
                      setState(() {
                        isBlack = !isBlack;
                      });
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  child: Text("Start timer"),
                  onPressed: () {
                    counter = 0;
                    isStop = false;
                    Timer.periodic(Duration(milliseconds: 1), (timer) {
                      if (isStop) timer.cancel();
                      setState(() {
                        counter++;
                      });
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  child: Text("Stop timer"),
                  onPressed: () {
                    isStop = true;
                  },
                ),
              ],
            ),
          )),
    );
  }
}
