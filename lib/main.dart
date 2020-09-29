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
  String output = "Belum ada data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Latihan Http Get List"),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Get Users by Page",
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
                    decoration: InputDecoration(hintText: "Input page"),
                    controller: idController,
                  ),
                ),
                RaisedButton(
                  child: Text("GET"),
                  onPressed: () {
                    User.GetUserList(idController.text).then((res) {
                      output = "";
                      for (int i =0;i <res.length;i++) {
                        output += "id : " + res[i].id + "\t" + "name : " + res[i].name + "\n";
                      }
                      setState(() {});
                    });
                  },
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Text(
                    output,style: TextStyle(
                    fontSize: 20
                  ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
