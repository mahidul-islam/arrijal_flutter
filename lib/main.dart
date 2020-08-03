import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() => runApp(ArRijal());

class ArRijal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ArRijal App',
      home: LoginScreen(),
    );
  }
}
