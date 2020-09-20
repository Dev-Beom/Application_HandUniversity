import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/content.dart';

class ContentAPI {
  final http.Client _client = http.Client();

  static const String _url = "https://jsonplaceholder.typicode.com/todos";

  Future<List<Content>> getContent() async {
    List<Content> list = [];

    await _client
        .get(Uri.parse(_url))
        .then((res) => res.body)
        .then(json.decode)
        .then((contents) =>
            contents.forEach((content) => list.add(Content.fromJson(content))));

    return list;
  }
}
