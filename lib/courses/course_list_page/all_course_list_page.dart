import 'package:ArRijal/courses/course_list_page/widgets/all_course_list.dart';
import 'package:flutter/material.dart';

class AllCourseListPage extends StatefulWidget {
  static const routeName = '/allCourseListPage';
  @override
  _AllCourseListPageState createState() => _AllCourseListPageState();
}

class _AllCourseListPageState extends State<AllCourseListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course List'),
      ),
      body: Container(
        child: AllCourseList(),
      ),
    );
  }
}
