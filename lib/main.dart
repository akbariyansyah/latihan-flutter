import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  double myPadding = 5;
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Animated padding"),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(milliseconds: 500),
                    padding: EdgeInsets.all(myPadding),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPressed = !isPressed;
                          if (isPressed) {
                            myPadding = 20;
                          } else {
                            myPadding = 5;
                          }
                        });
                      },
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(milliseconds: 500),
                    padding: EdgeInsets.all(myPadding),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPressed = !isPressed;
                          if (isPressed) {
                            myPadding = 20;
                          } else {
                            myPadding = 5;
                          }
                        });
                      },
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(milliseconds: 500),
                    padding: EdgeInsets.all(myPadding),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPressed = !isPressed;
                          if (isPressed) {
                            myPadding = 20;
                          } else {
                            myPadding = 5;
                          }
                        });
                      },
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(milliseconds: 500),
                    padding: EdgeInsets.all(myPadding),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPressed = !isPressed;
                          if (isPressed) {
                            myPadding = 20;
                          } else {
                            myPadding = 5;
                          }
                        });
                      },
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
