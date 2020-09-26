import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
  Color _color1 = Hexcolor("#83d0c9");
  Color _color2 = Hexcolor("#009688");
  Color _color3 = Hexcolor("#251e3e");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Custom Card"),
        backgroundColor: _color3,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              _color1,
              _color2,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/image-3.jpg"),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          50 + MediaQuery.of(context).size.height * 0.35,
                          20,
                          20),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "Beautiful Painting on The Street.",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20.0, color: _color3),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Posted on : ",
                                    style: TextStyle(
                                        fontSize: 14.0, color: Colors.grey),
                                  ),
                                  Text(
                                    " 12 June 2019",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: _color3),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Spacer(
                                  flex: 10,
                                ),
                                Icon(
                                  Icons.thumb_up,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                Text("999"),
                                Spacer(
                                  flex: 5,
                                ),
                                Icon(
                                  Icons.comment,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                Text("868"),
                                Spacer(
                                  flex: 10,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
