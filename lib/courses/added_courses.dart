import 'package:flutter/material.dart';
import 'package:ArRijal/data.dart';

class AddedCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        // height: 280,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 50,
                  padding: EdgeInsets.only(left: kDefaultPaddin, top: 16),
                  child: Text(
                    'My Courses',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Edit',
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  child: Image.asset('assets/course/course1.jpg'),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'AP/College Calculus AB',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  child: Image.asset('assets/course/course2.jpg'),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'AP/College Calculus BC',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  child: Image.asset('assets/course/course3.jpg'),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'AP/College Statistics',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  child: Image.asset('assets/course/course2.jpg'),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Algebra basics',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  child: Image.asset('assets/course/course1.jpg'),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'AP/College Calculus AB',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  child: Image.asset('assets/course/course2.jpg'),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'AP/College Calculus BC',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  child: Image.asset('assets/course/course3.jpg'),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'AP/College Statistics',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  child: Image.asset('assets/course/course2.jpg'),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Algebra basics',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
