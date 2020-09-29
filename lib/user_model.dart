import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
class User {
  String id;
  String name;

  User({this.id,this.name});

  factory User.CreateUser(Map<String,dynamic> object) {
    return User(
      id: object["id"].toString(),
      name: object["first_name"] + " " + object["last_name"]
    );
  }
  static Future<List<User>> GetUserList(String page) async {
    String baseURL = "https://reqres.in/api/users?page=$page";
    var getResult =  await http.get(baseURL);
    var getUsersList = json.decode(getResult.body);
    List<dynamic> usersList = (getUsersList as Map<String,dynamic>)["data"];
    List<User> users = [];
    for (int i =0;i < usersList.length;i++) {
      users.add(User.CreateUser(usersList[i]));
    }
    return users;
  }
}