import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  double radius = 0;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    animation = Tween<double>(begin: 0, end: pi * 2).animate(controller)
      ..addListener(() {
        setState(() {
          radius = animation.value;
        });
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Latihan Animated Widget & Animated Builder"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RotatingContainer(
              doubleAnimation: animation,
            ),
            RotationAnimation(
              doubleAnimation: animation,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.purple,
              ),
            ),
            RotationAnimation(
              doubleAnimation: animation,
              child: Text(
                "Hello World",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        )));
  }
}

class RotatingContainer extends AnimatedWidget {
  RotatingContainer({Key key, Animation<double> doubleAnimation})
      : super(key: key, listenable: doubleAnimation);

  @override
  Widget build(BuildContext context) {
    Animation<double> animation = listenable as Animation<double>;
    return Transform.rotate(
      angle: animation.value,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(color: Colors.red),
      ),
    );
  }
}

class RotationAnimation extends StatelessWidget {
  final Animation<double> doubleAnimation;
  final Widget child;
  RotationAnimation({this.doubleAnimation, this.child});
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        child: child,
        animation: doubleAnimation,
        builder: (context, child) {
          return Transform.rotate(
            angle: doubleAnimation.value,
            child: Container(
              child: child,
            ),
          );
        });
  }
}
