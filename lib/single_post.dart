import 'package:flutter/material.dart';

class SinglePost extends StatelessWidget {
  SinglePost({Key key, this.title, this.description, this.image})
      : super(key: key);
  final String title;
  final String description;
  final String image;

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Row(
        children: <Widget>[
          Card(
            child: Text(
              title,
            ),
          ),
        ],
      ),
    );
  }
}
