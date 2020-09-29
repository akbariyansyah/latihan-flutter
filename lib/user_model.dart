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
  static Future<User> GetUser(String id) async {
    String baseURL = "https://reqres.in/api/users/$id";

    var getResult = await http.get(baseURL);
    var getObject = json.decode(getResult.body);
    var getUser = (getObject as Map<String,dynamic>)["data"];

    return User.CreateUser(getUser);
  }
}