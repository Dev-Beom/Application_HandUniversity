import 'dart:async';
import 'dart:convert';
import 'package:application_handuniversity/model/post.dart';
import 'package:http/http.dart' as http;

class PostAPI {
  final http.Client _client = http.Client();

  static const String _url = "https://jsonplaceholder.typicode.com/posts";

  Future<List<Post>> getContent() async {
    List<Post> list = [];

    await _client
        .get(Uri.parse(_url))
        .then((res) => res.body)
        .then(json.decode)
        .then(
            (posts) => posts.forEach((post) => list.add(Post.fromJson(post))));

    return list;
  }
}
