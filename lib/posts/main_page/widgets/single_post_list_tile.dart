import 'package:ArRijal/posts/post_detail_view_page/post_detail_view.dart';
import 'package:flutter/material.dart';
import '../../models/post.dart';

class SinglePostListTile extends StatelessWidget {
  SinglePostListTile({Key key, this.post}) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 6),
      height: 245,
      child: Card(
        color: Colors.white70,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 64,
                      width: 64,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child:
                          Image.asset('assets/images/' + '${post.authorImage}'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text(
                            '${post.author}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '${post.date}',
                            style: TextStyle(
                              color: Colors.grey[500],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(right: 12),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.star),
                      Text('${post.rating}'),
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                padding:
                    EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '${post.title}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                  '${post.shortDescription}',
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.watch_later,
                                    ),
                                    Text('Read Later'),
                                  ],
                                ),
                              ),
                              RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          PostDetailViewPage(post: post),
                                    ),
                                    // PostDetailViewPage.routeName,
                                  );
                                },
                                color: Colors.blue,
                                child: Text(
                                  'See More',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
