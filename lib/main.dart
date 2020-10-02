import 'package:flutter/material.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:myapp/custom_progress_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Custom Progress Bar"),
        ),
        body: Center(
          child: ChangeNotifierProvider<TimeState>(
            builder: (context) => TimeState(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<TimeState>(
                  builder: (context,timeState,_) => CustomProgressBar(
                    width: 200,
                    total: 15,
                    value: timeState.time,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Consumer<TimeState>(
                  builder: (context,timeState,_) => RaisedButton(
                    onPressed: () {
                      Timer.periodic(Duration(seconds: 1), (timer) {
                        if (timeState.time == 0) timer.cancel();
                        else
                        timeState.time -= 1;
                      });
                    },
                    child: Text("Start"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TimeState extends ChangeNotifier {
  int _time = 10;
  int get time => _time;

  set time(int newTime) {
    _time = newTime;
    notifyListeners();
  }
}
