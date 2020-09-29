import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:myapp/post_result_model.dart';

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
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  PostResult postResult = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Latihan Http Post"),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Post New User",
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
                    decoration: InputDecoration(hintText: "Input name"),
                    controller: nameController,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Input job"),
                    controller: jobController,
                  ),
                ),
                RaisedButton(
                  child: Text("POST"),
                  onPressed: () {
                    PostResult.PostReq(nameController.text, jobController.text)
                        .then((res) {
                      postResult = res;
                      setState(() {});
                    });
                  },
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Text(
                    (postResult != null)
                        ? "id : " + postResult.id +
                            "\n" +
                           "name : " + postResult.name +
                            "\n" +
                          "job : " +  postResult.job +
                            "\n" +
                           "created at : " + postResult.created
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
