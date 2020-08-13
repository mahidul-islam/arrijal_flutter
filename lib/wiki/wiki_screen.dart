import 'package:ArRijal/wiki/recommended_topics.dart';
import 'package:flutter/material.dart';
import 'package:ArRijal/data.dart';

class WikiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: kDefaultPaddin / 2),
        RecommendedTopics(),
        SizedBox(height: kDefaultPaddin / 2),
        DateForTopic(date: 'Thursday, Aug 13'),
      ],
    );
  }
}

class DateForTopic extends StatelessWidget {
  final String date;
  DateForTopic({Key key, this.date}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 35,
        top: 10,
      ),
      child: Text(
        date,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }
}
