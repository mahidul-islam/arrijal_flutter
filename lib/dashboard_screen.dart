// import 'package:ArRijal/alerts.dart';
import 'package:flutter/material.dart';
import 'profile.dart';
import 'productbox.dart';
import 'data.dart';
import 'single_post.dart';
import 'topics.dart';
import 'alerts.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget _buildAppBar(choice) {
    if (choice == 0) {
      return AppBar(
        title: Text("Home"),
      );
    }
    if (choice == 1) {
      return AppBar(
        title: Text("Courses"),
      );
    }
    if (choice == 2) {
      return AppBar(
        title: Text("Topics"),
      );
    }
    if (choice == 3) {
      return AppBar(
        title: Text("Notifications"),
      );
    }
    if (choice == 4) {
      return AppBar(
        title: Text("Profile"),
      );
    }
    return AppBar(
      title: Text("You're in Trouble"),
    );
  }

  int choice = 0;
  int index = 0;

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
            ProductBox(
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
      appBar: _buildAppBar(choice),
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
        // selectedItemColor: Colors.amber,
        onTap: _changeView,
      ),
    );
  }
}
