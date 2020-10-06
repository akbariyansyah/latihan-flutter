import 'dart:convert';
import 'package:http/http.dart' as http;

class Post {
  String id, title, body;

  Post({this.id, this.title, this.body});

  factory Post.CreatePost(Map<String, dynamic> object) {
    return Post(
        id: object["id"],
        title: object["title"],
        body: object["body"]);
  }
  static Future<List<Post>> GetPost(int start, int limit) async {
    String baseURL = "https://jsonplaceholder.typicode.com/posts?_start=" +
        start.toString() +
        "&_limit=" +
        limit.toString();
    var apiResult = await http.get(baseURL);
    if (apiResult.statusCode == 200) {
      var postList = json.decode(apiResult.body) as List;
      return postList
          .map<Post>((item) =>
              Post(id: item["id"].toString(), title: item["title"], body: item["body"]))
          .toList();
    }
  }
}
