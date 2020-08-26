import 'package:flutter/material.dart';
import 'widgets/post_detail_view_body.dart';
import 'widgets/post_comments_modal.dart';
import '../models/post.dart';

class PostDetailViewPage extends StatelessWidget {
  static const routeName = '/postDetailViewPage';

  PostDetailViewPage({Key key, this.post}) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Post Details',
        ),
      ),
      body: PostDetailViewBody(
        post: post,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return PostComments();
            },
          );
        },
        child: Icon(Icons.message),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
