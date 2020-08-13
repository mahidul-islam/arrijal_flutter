import 'package:flutter/material.dart';
import 'package:ArRijal/data.dart';
import 'topics.dart';

class RecommendedTopics extends StatelessWidget {
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
                      'Recommended for you',
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
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                height: 155,
                child: ListView.builder(
                  itemCount: topics.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      ///calculates the left and right margins
                      ///to be even with the screen margin
                      padding: index == 0
                          ? EdgeInsets.only(left: 24.0, right: 8.0)
                          : index == 4
                              ? EdgeInsets.only(right: 24.0, left: 8.0)
                              : EdgeInsets.symmetric(horizontal: 8.0),
                      child: TopicCard(topics[index]),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
