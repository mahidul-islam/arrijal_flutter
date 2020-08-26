import 'package:flutter/material.dart';
import '../../models/post.dart';

class PostDetailViewBody extends StatelessWidget {
  PostDetailViewBody({Key key, this.post}) : super(key: key);
  final Post post;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8.0),
                height: 184,
                width: 184,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 8.0, color: Colors.white)),
                child: Image.asset('assets/images/' + '${post.authorImage}'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 72.0, vertical: 16.0),
                child: Text(
                  '${post.title}',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 32),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "${post.author}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        '${post.date}',
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.red[500],
                ),
                Text(
                  '${post.rating}',
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 32),
            child: Text("${post.description}"),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 32),
            child: Text("${post.description}"),
          ),
        ],
      ),
    );
  }
}
