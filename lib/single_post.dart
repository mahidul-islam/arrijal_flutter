import 'package:flutter/material.dart';
import 'post_comments.dart';

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
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[],
          ),
        ),
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
