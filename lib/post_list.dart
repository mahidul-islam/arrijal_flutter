import 'package:flutter/material.dart';
import 'single_post.dart';

class SinglePostListItem extends StatelessWidget {
  SinglePostListItem({Key key, this.title, this.description, this.image})
      : super(key: key);
  final String title;
  final String description;
  final String image;

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5.00),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.pushNamed(
                      context,
                      SinglePost.routeName,
                    )
                  },
                  child: Text(
                    title,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
