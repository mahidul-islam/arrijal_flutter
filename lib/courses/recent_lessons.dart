import 'package:ArRijal/data.dart';
import 'package:flutter/material.dart';

class RecentLessons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        height: 280,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  // color: Colors.green,
                  height: 50,
                  padding: EdgeInsets.only(left: kDefaultPaddin, top: 16),
                  child: Text(
                    'Recent lessons',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
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
                  child: Image.asset('assets/course/cripto.jpg'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Criptography'),
                    Text(
                      'Ciphers',
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                  child: Image.asset('assets/course/cripto.jpg'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Criptography'),
                    Text(
                      'Ancient criptography',
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                  child: Image.asset('assets/course/math.jpg'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Foundations'),
                    Text(
                      'Negative numbers',
                      style: TextStyle(fontWeight: FontWeight.bold),
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
