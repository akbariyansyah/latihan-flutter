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
          title: Text("Latihan Gradient Opacity"),
        ),
        body: Center(
          child: ShaderMask(
              shaderCallback: (rectangle) {
                return LinearGradient(
                        colors: [Colors.black, Colors.transparent],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)
                    .createShader(
                        Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
              },
              blendMode: BlendMode.dstIn,
              child: Image(
                  width: 300,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"))),
        ));
  }
}
