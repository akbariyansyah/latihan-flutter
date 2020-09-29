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

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Latihan Stack"),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
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
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
                  child: Image.asset("assets/image-1.jpg"),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
                  child: Image.asset("assets/image-2.jpg"),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
                  child: Image.asset("assets/image-3.jpg"),
                ),
              ],
            ),
            Align(
              alignment: Alignment(0,0.80),
              child: RaisedButton(
                color: Colors.amber,
                onPressed: () {},
                child: Text("Button"),
              ),
            )
          ],
        ));
  }
}
