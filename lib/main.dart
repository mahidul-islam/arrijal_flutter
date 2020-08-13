import 'package:ArRijal/alert_page.dart';
import 'package:ArRijal/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'searchpage.dart';
import 'posts/single_post.dart';

void main() => runApp(ArRijal());

class ArRijal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ArRijal App',
      initialRoute: LoginScreen.routeName,
      routes: {
        SinglePost.routeName: (context) => SinglePost(),
        DashBoard.routeName: (context) => DashBoard(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SearchPage.routeName: (context) => SearchPage(),
        AlertScreen.routeName: (context) => AlertScreen(),
      },
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        fontFamily: "Montserrat",
      ),
    );
  }
}
