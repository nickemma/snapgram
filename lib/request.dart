import 'package:SnapGram/config.dart';
import 'package:SnapGram/model/post.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Requests {
  static Future<List<Post>> getPosts() async {
    var response = await http.get(Uri.parse("${Config.API_URL}/post"));
    List<dynamic> dataList = json.decode(response.body);

    List<Post> posts = [];
    for (var object in dataList) {
      final post = Post(object['owner'], object['message']);
      posts.add(post);
    }
    return posts;
  }
}
