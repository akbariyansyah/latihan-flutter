import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/application_color.dart';
import 'package:provider/provider.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColor>(
        builder: (context) => ApplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Consumer<ApplicationColor>(
              builder: (context,applicationColor,_) => Text(
                "Latihan provider state management",
                style: TextStyle(color: applicationColor.color),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<ApplicationColor>(
                  builder: (context,applicationColor,_) => AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    margin: EdgeInsets.all(5),
                    width: 200,
                    height: 200,
                    color: applicationColor.color,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text("LB"),
                    ),
                    Consumer<ApplicationColor>(
                      builder: (context,applicationColor,_) => Switch(
                        inactiveThumbColor: Colors.amber,
                          value: applicationColor.isLightBlue,
                          activeColor: Colors.lightBlue,
                          onChanged: (newValue) {
                            applicationColor.isLightBlue = newValue;
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text("LB"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
