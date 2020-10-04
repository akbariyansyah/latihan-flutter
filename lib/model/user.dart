import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  String id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  User({this.id, this.email, this.firstName, this.lastName, this.avatar});

  factory User.CreateUser(Map<String, dynamic> object) {
    return User(
      id: object["id"].toString(),
      email: object["email"],
      firstName: object["first_name"],
      lastName: object["last_name"],
      avatar: object["avatar"],
    );
  }
  static Future<User> getUserApi(int id) async {
    String baseURL = "https://reqres.in/api/users/" + id.toString();
    print(id.toString());
    var result = await http.get(baseURL);
    var jsonResult = jsonDecode(result.body);
    var userResult = (jsonResult as Map<String, dynamic>)["data"];
    return User.CreateUser(userResult);
  }
}

class UninitializedUser extends User {}
