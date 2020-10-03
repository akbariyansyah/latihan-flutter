import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<bool> isSelected = [true, false, false];
  ColorFilter myColorFilter = ColorFilter.mode(Colors.blue, BlendMode.screen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorFiltered(
        colorFilter: myColorFilter,
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                "Latihan Selectable, toggleButton, coloredfilter",
                maxLines: 2,
              ),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectableText(
                  "Ini adalah contoh selectable text SIlahkan pilih saya,",
                  showCursor: true,
                  cursorWidth: 3,
                  cursorColor: Colors.red,
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  height: 20,
                ),
                ToggleButtons(
                  children: [
                    Icon(Icons.adb),
                    Icon(Icons.add),
                    Icon(Icons.remove_circle),
                  ],
                  isSelected: isSelected,
                  onPressed: (index) {
                    setState(() {
                      for (int i = 0; i < isSelected.length; i++) {
                        if (index == 0) {
                          myColorFilter = ColorFilter.mode(Colors.blue,
                              BlendMode.screen);
                        } else if (index == 1) {
                          myColorFilter = ColorFilter.mode(
                              Colors.green, BlendMode.hue);
                        } else {
                          myColorFilter = ColorFilter.mode(
                              Colors.purple, BlendMode.multiply);
                        }
                        isSelected[i] = (i == index) ? true : false;
                      }
                      // isSelected[index] = !isSelected[index];
                    });
                  },
                  color: Colors.red[50],
                  selectedColor: Colors.red,
                  selectedBorderColor: Colors.red,
                  splashColor: Colors.blue,
                  highlightColor: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                )
              ],
            )),
      ),
    );
  }
}
