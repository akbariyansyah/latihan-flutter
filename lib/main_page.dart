import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/switch_day_night.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Rive"),backgroundColor: Colors.purple,),
      body: Center(
        child: SwitchDayNight(),
      ),
    );
  }
}
