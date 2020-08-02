import 'package:flutter/material.dart';

class Topic extends StatelessWidget {
  Topic({Key key, this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Row(
        children: <Widget>[
          Card(
            child: Text(
              title,
            ),
          ),
        ],
      ),
    );
  }
}
