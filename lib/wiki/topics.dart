import 'package:flutter/material.dart';
import '../data.dart';

class TopicCard extends StatelessWidget {
  final Topic topic;

  TopicCard(
    this.topic, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Card(
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: Image.asset(
                  topic.image,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              child: Text(
                topic.description,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
