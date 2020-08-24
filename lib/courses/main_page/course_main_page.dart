import 'package:flutter/material.dart';
import 'widgets/added_course_list.dart';
import 'widgets/recent_lessons.dart';
import 'package:ArRijal/constants.dart';

class CourseMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i == 0) {
          return SizedBox(height: kDefaultPaddin);
        }
        if (i == 1) {
          return RecentLessonList();
        }
        if (i == 2) {
          return SizedBox(height: kDefaultPaddin);
        }
        if (i == 3) {
          return AddedCourseList();
        }
        return null;
      },
    );
  }
}
