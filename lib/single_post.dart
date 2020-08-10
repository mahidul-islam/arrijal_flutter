import 'package:flutter/material.dart';
import 'post_comments.dart';
import 'data.dart';

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
            children: <Widget>[
              RawMaterialButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return PostComments();
                    },
                  );
                },
                constraints: const BoxConstraints(minWidth: 45, minHeight: 45),
                child: Icon(Icons.favorite,
                    color: Color.fromRGBO(255, 137, 147, 1)),
                elevation: 0.0,
                shape: CircleBorder(),
                fillColor: Color.fromRGBO(255, 255, 255, 0.4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
