import 'dart:math';

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
  bool isOn = false;
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
        color: Colors.deepOrangeAccent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.pink, width: 3)),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Latihan Switcher ",
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedSwitcher(
                child: myWidget,
                duration: Duration(milliseconds: 500),
                transitionBuilder: (child, animation) => RotationTransition(
                  turns: animation,
                  child: child,
                ),
              ),
              Switch(
                  activeColor: Colors.cyan[800],
                  inactiveThumbColor: Colors.red,
                  inactiveTrackColor: Colors.red[200],
                  value: isOn,
                  onChanged: (newValue) {
                    isOn = newValue;
                    setState(() {
                      if (isOn) {
                        myWidget = SizedBox(
                          height: 100,
                          width: 200,
                          child: Center(
                            // child: Text(
                            //   "Switcher is ON",
                            //   style: TextStyle(
                            //     color: Colors.black,
                            //     fontSize: 30,
                            //     fontWeight: FontWeight.bold,
                            //     fontFamily: "Lobster",
                            //   ),
                            // ),
                             child :  Container(
                               key: ValueKey(1),
                                width: 200,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.pink, width: 3)),
                              ),
                          ),
                        );
                      } else {
                        myWidget = Container(
                          key: ValueKey(2),
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.lightBlue, width: 3)),
                        );
                      }
                    });
                  })
            ],
          ),
        ));
  }
}
