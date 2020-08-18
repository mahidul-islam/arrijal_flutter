import 'package:flutter/material.dart';
import 'added_courses.dart';
import 'recent_lessons.dart';
import 'package:ArRijal/data.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i == 0) {
          return SizedBox(height: kDefaultPaddin);
        }
        if (i == 1) {
          return RecentLessons();
        }
        if (i == 2) {
          return SizedBox(height: kDefaultPaddin);
        }
        if (i == 3) {
          return AddedCourses();
        }
        return null;
      },
    );
  }
}
