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

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Latihan Text Style",
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "a brown fox jumps over the lazy dog",
                maxLines: 2,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontFamily: "Lobster"),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras laoreet iaculis massa, ut maximus risus porttitor sit amet. Phasellus a orci enim. Sed et ultricies libero. Curabitur scelerisque, orci ornare iaculis dignissim, dui nibh imperdiet velit, et tristique quam mi lacinia ligula. Nam eget efficitur neque, id lobortis diam. Fusce a dignissim orci, ac finibus orci. Nullam volutpat quam quis sapien finibus consequat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum porttitor, neque cursus aliquet dictum, nunc neque laoreet dolor, a pharetra ante erat sed ante. Cras sodales quam et lorem posuere, id ultrices turpis elementum. Mauris iaculis nunc venenatis convallis porta. Cras ligula ipsum, hendrerit ac enim non, rutrum accumsan ligula. Sed nec velit at ipsum finibus faucibus. Aliquam cursus nibh a enim venenatis sollicitudin. Duis sed facilisis tortor. Mauris eget nulla mollis, sodales erat quis, pharetra veli",
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ));
  }
}
