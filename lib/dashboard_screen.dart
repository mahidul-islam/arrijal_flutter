import 'package:ArRijal/posts/post_page.dart';
import 'books/books_list_page.dart';
import 'package:flutter/material.dart';
import 'profile/profile.dart';
import 'appbar.dart';
import 'wiki/wiki_screen.dart';
import 'courses/main_page/course_main_page.dart';

class DashBoard extends StatefulWidget {
  static const routeName = '/';
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int choice = 0;
  static const appbar_titles = <String>[
    'Home',
    'Courses',
    'Topics',
    'Shop',
    'Profile'
  ];

  void _changeView(int index) {
    setState(() {
      choice = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget _buildBody(choice) {
      if (choice == 0) {
        return PostPage();
      }
      if (choice == 1) {
        // return CoursePage();
        return CourseMainPage();
      }
      if (choice == 2) {
        return WikiScreen();
      }
      if (choice == 3) {
        return BookListScreen();
      }
      if (choice == 4) {
        return Profile();
      }
      return Container(
        child: Center(
          child: Text(
            'You are in trouble',
            style: TextStyle(fontSize: 28),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppbar(
        title: appbar_titles[choice],
      ),
      body: _buildBody(choice),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.computer),
            title: Text('Courses'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text('Topics'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_library),
            title: Text('Books'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            title: Text('Profile'),
          ),
        ],
        currentIndex: choice,
        onTap: _changeView,
      ),
    );
  }
}
