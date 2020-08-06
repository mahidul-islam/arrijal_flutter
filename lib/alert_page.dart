import 'package:flutter/material.dart';

class AlertScreen extends StatefulWidget {
  static const routeName = '/alerts';
  @override
  _AlertScreenState createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Notifications',
            ),
          ),
          body: Container(
            child: Center(
              child: Text(
                'Alert Page',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
