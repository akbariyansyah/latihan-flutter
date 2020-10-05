import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'dart:async';
import 'package:myapp/model/monster.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var appDocumentDirectory =
      await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  Hive.registerAdapter(MonsterAdapter());
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
        title: Text("Latihan Hive Database"),
      ),
      body: FutureBuilder(
        future: Hive.openBox("monster"),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(
                child: Text("Ada error"),
              );
            } else {
              var monstersBox = Hive.box("monster");
              if (monstersBox.length == 0) {
                monstersBox.add(Monster("Jelly ", 1));
                monstersBox.add(Monster("Sword Guardian", 2));
              }
              return WatchBoxBuilder(
                box: monstersBox,
                builder: (context, monsters) => Container(
                  margin: EdgeInsets.all(20),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      Monster monster = monsters.getAt(index);
                      return Container(
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.only(bottom: 10,left: 10),
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.7),
                                offset: Offset(1, 1),
                                blurRadius: 6)
                          ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(monster.name +
                                  " [ " +
                                  monster.level.toString() +
                                  " ] ",style: TextStyle(
                                fontSize: 15,fontWeight: FontWeight.w700,
                              ),),
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.trending_up),
                                    color: Colors.green,
                                    onPressed: () {
                                      monsters.putAt(
                                        index,
                                        Monster(
                                            monster.name, monster.level + 1),
                                      );
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.copy),
                                    color: Colors.amber,
                                    onPressed: () {
                                      monsters.add(
                                          Monster(monster.name, monster.level));
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.delete),
                                    color: Colors.red,
                                    onPressed: () {
                                      monsters.deleteAt(index);
                                    },
                                  ),
                                ],
                              )
                            ],
                          ));
                    },
                    itemCount: monsters.length,
                  ),
                ),
              );
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
