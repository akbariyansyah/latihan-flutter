import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class PostResult {
  String id;
  String name;
  String job;
  String created;

  PostResult({this.id, this.name, this.job, this.created});

  factory PostResult.CreatePostResule(Map<String, dynamic> object) {
    return PostResult(
        id: object["id"],
        name: object["name"],
        job: object["job"],
        created: object["createdAt"]);
  }
  static Future<PostResult> PostReq(String name,String job) async {
    final baseURL = "https://reqres.in/api/users";

    var postResult = await http.post(baseURL,body: {"name":name,"job":job});
    var postObject = json.decode(postResult.body);

    return PostResult.CreatePostResule(postObject);

  }
}
