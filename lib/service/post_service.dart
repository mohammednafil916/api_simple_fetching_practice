import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:api_practice/model/post_model.dart';

class PostService {
  Future<List<PostModel>> fetchPosts() async {

    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    final response = await http.get(url);
    final List data = jsonDecode(response.body);

    return data.map((item) {
      return PostModel.fromJson(item);
    }).toList();
  }
}
