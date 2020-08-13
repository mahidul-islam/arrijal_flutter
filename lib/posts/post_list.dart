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
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 6),
      height: 245,
      child: Card(
        color: Colors.white70,
        child: Column(
          children: <Widget>[
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
                        border: Border.all(
                          width: 4,
                          color: Colors.white,
                        ),
                      ),
                      child: Image.asset('assets/images/avatar.png'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text(
                            'Demo Text',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '12th August, 2020',
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
                      Text('4.5'),
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
                                  title,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                    'Contrary to popular belief, Lorem Ipsum is simply random text. Contrary to popular belief, Lorem Ipsum is simply random? Contrary to popular belief, ...'),
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
                                onPressed: () => {
                                  Navigator.pushNamed(
                                    context,
                                    SinglePost.routeName,
                                  ),
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
