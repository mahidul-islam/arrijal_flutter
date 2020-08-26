import 'package:ArRijal/alert_page.dart';
import 'package:ArRijal/courses/course_list_page/all_course_list_page.dart';
import 'package:ArRijal/dashboard_screen.dart';
import 'package:ArRijal/posts/post_detail_view_page/post_detail_view.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'searchpage.dart';

void main() => runApp(ArRijal());

class ArRijal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ArRijal App',
      initialRoute: LoginScreen.routeName,
      routes: {
        DashBoard.routeName: (context) => DashBoard(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SearchPage.routeName: (context) => SearchPage(),
        AlertScreen.routeName: (context) => AlertScreen(),
        AllCourseListPage.routeName: (context) => AllCourseListPage(),
        PostDetailViewPage.routeName: (context) => PostDetailViewPage(),
      },
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        fontFamily: "Montserrat",
      ),
    );
  }
}
