import 'dart:async';
import '../../models/post.dart';

class AllPostBloc {
  List<Post> _postList = demo_posts;

  StreamController _allPostStreamController = StreamController<List<Post>>();

  Stream<List<Post>> get postListStream => _allPostStreamController.stream;

  AllPostBloc() {
    _allPostStreamController.add(_postList);
  }

  dispose() {
    _allPostStreamController.close();
  }
}
