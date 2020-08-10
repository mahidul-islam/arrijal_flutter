import 'package:flutter/material.dart';

class PostComments extends StatefulWidget {
  @override
  _PostCommentsState createState() => _PostCommentsState();
}

class _PostCommentsState extends State<PostComments> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8.0),
                height: 92,
                width: 92,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 8.0, color: Colors.white)),
                child: Image.asset('assets/images/avatar.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 72.0, vertical: 16.0),
                child: RaisedButton(
                  onPressed: null,
                  child: Text(
                    'Comment',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
          Divider(),
          Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(vertical: 4.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: CircleAvatar(
                        maxRadius: 14,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Billy Holand',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '10 am, Via iOS',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 10.0),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: null,
                          ),
                          Text(
                            'Not as I expected! ... I`m really sad',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '21 likes',
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 10.0),
                                ),
                                Text(
                                  '1 Reply',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.0),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(vertical: 4.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: CircleAvatar(
                        maxRadius: 14,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Billy Holand',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '10 am, Via iOS',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 10.0),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: null,
                          ),
                          Text(
                            'Not as I expected! ... I`m really sad',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '21 likes',
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 10.0),
                                ),
                                Text(
                                  '1 Reply',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.0),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(vertical: 4.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: CircleAvatar(
                        maxRadius: 14,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Billy Holand',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '10 am, Via iOS',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 10.0),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: null,
                          ),
                          Text(
                            'Not as I expected! ... I`m really sad',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '21 likes',
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 10.0),
                                ),
                                Text(
                                  '1 Reply',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.0),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
