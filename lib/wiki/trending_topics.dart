import 'package:flutter/material.dart';
import 'package:ArRijal/data.dart';

class TrendingTopic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Card(
          color: Colors.white70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Trending Now',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Aug, 13 2020',
                          style: TextStyle(fontSize: 12),
                        ),
                        PopupMenuButton(
                          onSelected: null,
                          itemBuilder: (BuildContext context) {
                            return wikiCardChoice.map(
                              (Choice choice) {
                                return PopupMenuItem<Choice>(
                                  value: choice,
                                  child: Text(
                                    choice.title,
                                    style: TextStyle(fontSize: 14),
                                  ),
                                );
                              },
                            ).toList();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          'Heading no 1',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8, top: 8),
                        child: Text(
                          'This is a title like no other i can found ',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          'and if i don\'t find this thing now i need',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          'to go bold just how this is ...',
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: EdgeInsets.only(top: 8, right: 8),
                      height: 80,
                      child: Image.asset(
                        'assets/images/book1.jpg',
                      ),
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          'Not Same',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8, top: 8),
                        child: Text(
                          'This is a title like no other i can found ',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          'and if i don\'t find this thing now i need',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          'to go bold just how this is ...',
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: EdgeInsets.only(top: 8, right: 8),
                      height: 80,
                      child: Image.asset(
                        'assets/images/book1.jpg',
                      ),
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          'Proper Heading',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8, top: 8),
                        child: Text(
                          'This is a title like no other i can ',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          'and if i don\'t find this thing now i ',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          'to go bold just how this is ...',
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: EdgeInsets.only(top: 8, right: 8),
                      height: 80,
                      child: Image.asset(
                        'assets/images/book2.jpeg',
                      ),
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 8, left: 8),
                    child: Icon(Icons.arrow_forward),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8, bottom: 8),
                    child: Text(
                      'More Like This.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
