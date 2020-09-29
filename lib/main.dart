import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/user_model.dart';

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

class _MainPageState extends State<MainPage> {
  TextEditingController idController = TextEditingController();
  User user = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Latihan Http Get"),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Get User by ID",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Lobster",
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Input id"),
                    controller: idController,
                  ),
                ),
                RaisedButton(
                  child: Text("GET"),
                  onPressed: () {
                    User.GetUser(idController.text).then((res) {
                      user = res;
                      setState(() {});
                    });
                  },
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Text(
                    (user != null)
                        ? "id : " + user.id +
                            "\n" +
                           "name : " + user.name
                        : "Tidak ada data",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
