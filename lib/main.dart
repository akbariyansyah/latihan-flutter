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
        backgroundColor: Colors.lightBlue[50],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Latihan Hero widget",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
          },
          child: Hero(
            tag: "ironman",
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                width: 200,
                height: 200,
                child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://www.straitstimes.com/sites/default/files/styles/article_pictrure_780x520_/public/articles/2019/04/16/lwx_ironman_160419_109.jpg?itok=sLqm9KNi&timestamp=1555392332")),
              ),
            ),
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[200],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Second Page",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Hero(
            tag: "ironman",
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Container(
                width: 400,
                height: 400,
                child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://www.straitstimes.com/sites/default/files/styles/article_pictrure_780x520_/public/articles/2019/04/16/lwx_ironman_160419_109.jpg?itok=sLqm9KNi&timestamp=1555392332")),
              ),
            ),
          ),
        ));
  }
}
