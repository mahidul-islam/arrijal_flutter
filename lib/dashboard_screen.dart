import 'package:flutter/material.dart';
import 'profile.dart';
import 'single_course.dart';
import 'data.dart';
import 'single_post.dart';
import 'topics.dart';
import 'alerts.dart';
import 'appbar.dart';
import 'course_list.dart';
import 'post_list.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int choice = 0;
  static const appbar_titles = <String>[
    'Home',
    'Courses',
    'Topics',
    'Notifications',
    'Profile'
  ];

  Widget _buildBody(choice) {
    if (choice == 0) {
      return ListView(
        children: <Widget>[
          for (var i = 0; i < posts.length; i++)
            SinglePost(
              title: posts[i]['title'],
              description: posts[i]['des'],
              image: posts[i]['image'],
            )
        ],
      );
    }
    if (choice == 1) {
      return ListView(
        children: <Widget>[
          for (var i = 0; i < data.length; i++)
            Course(
              name: data[i]['name'],
              description: data[i]['des'],
              price: data[i]['price'],
              image: data[i]['image'],
            )
        ],
      );
    }
    if (choice == 2) {
      return ListView(
        children: <Widget>[
          for (var i = 0; i < topics.length; i++)
            Topic(
              title: topics[i]['title'],
            )
        ],
      );
    }
    if (choice == 3) {
      return ListView(
        children: <Widget>[
          for (var i = 0; i < alerts.length; i++)
            Alert(
              text: alerts[i]['text'],
              seen: alerts[i]['seen'],
              image: alerts[i]['image'],
            )
        ],
      );
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

  void _changeView(int index) {
    setState(() {
      choice = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            icon: Icon(Icons.notifications),
            title: Text('Alerts'),
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
