import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  Alert({Key key, this.text, this.seen, this.image}) : super(key: key);
  final String text;
  final bool seen;
  final String image;

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Row(
        children: <Widget>[
          Card(
            child: Text(
              text,
            ),
          ),
        ],
      ),
    );
  }
}
