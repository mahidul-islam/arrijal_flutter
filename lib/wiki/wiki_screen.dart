import 'package:ArRijal/wiki/recommended_topics.dart';
import 'package:flutter/material.dart';
import 'package:ArRijal/data.dart';
import 'trending_topics.dart';

class WikiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, index) {
        if (index == 0) {
          return SizedBox(height: kDefaultPaddin / 2);
        }
        if (index == 1) {
          return RecommendedTopics();
        }
        if (index == 2) {
          return SizedBox(height: kDefaultPaddin / 2);
        }
        if (index == 3) {
          return DateForTopic(date: 'Thursday, Aug 13');
        }
        if (index == 4) {
          return SizedBox(height: kDefaultPaddin / 2);
        }
        if (index == 5) {
          return TrendingTopic();
        }
        if (index == 6) {
          return SizedBox(height: kDefaultPaddin / 2);
        }
        if (index == 7) {
          return DateForTopic(date: 'Wednesday Aug 12');
        }
        if (index == 8) {
          return SizedBox(height: kDefaultPaddin / 2);
        }
        if (index == 9) {
          return TrendingTopic();
        }
        if (index == 10) {
          return SizedBox(height: kDefaultPaddin / 2);
        }
        if (index == 11) {
          return DateForTopic(date: 'Tuesday Aug 11');
        }
        if (index == 12) {
          return SizedBox(height: kDefaultPaddin / 2);
        }
        if (index == 13) {
          return TrendingTopic();
        }
        if (index == 14) {
          return SizedBox(height: kDefaultPaddin / 2);
        }
        if (index == 15) {
          return DateForTopic(date: 'Monday Aug 10');
        }
        if (index == 16) {
          return SizedBox(height: kDefaultPaddin / 2);
        }
        if (index == 17) {
          return TrendingTopic();
        }
        if (index == 18) {
          return SizedBox(height: kDefaultPaddin / 2);
        }
        if (index == 19) {
          return DateForTopic(date: 'Sunday Aug 9');
        }
        if (index == 20) {
          return SizedBox(height: kDefaultPaddin / 2);
        }
        if (index == 21) {
          return TrendingTopic();
        }
        if (index == 22) {
          return SizedBox(height: kDefaultPaddin / 2);
        }
        return null;
      },
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
