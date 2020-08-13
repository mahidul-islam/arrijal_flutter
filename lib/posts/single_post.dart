import 'package:flutter/material.dart';
import 'post_comments.dart';
import 'single_post_body.dart';

class SinglePost extends StatefulWidget {
  static const routeName = '/single_post';
  @override
  _SinglePostState createState() => _SinglePostState();
}

class _SinglePostState extends State<SinglePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Post Details',
        ),
      ),
      body: SinglePostBody(),
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
