import 'package:flutter/material.dart';
import 'package:ArRijal/data.dart';
import 'single_post_list_item.dart';

class PostPage extends StatelessWidget {
  Widget _buildPost(i) {
    return SinglePostListItem(
      title: posts[i]['title'],
      description: posts[i]['des'],
      image: posts[i]['image'],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i >= posts.length) {
          return null;
        }
        return _buildPost(i);
      },
    );
  }
}
