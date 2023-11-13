import 'package:SnapGram/model/post.dart';
import 'package:SnapGram/request.dart';

void main() async {
  List<Post> posts = await Requests.getPosts();

  for (var post in posts) {
    print(post.owner);
    print(post.message);
  }
}
