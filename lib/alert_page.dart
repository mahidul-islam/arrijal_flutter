import 'package:flutter/material.dart';
import 'data.dart';

class AlertScreen extends StatefulWidget {
  static const routeName = '/alerts';
  @override
  _AlertScreenState createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  Widget _buildAlert(i) {
    print(i);
    return ListTile(
      title: Text(
        alerts[i]['text'],
      ),
    );
  }

  Widget _buildAlerts() {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider(); /*2*/

        final index = i ~/ 2; /*3*/
        // if (index >= _suggestions.length) {
        //   // _suggestions.addAll(generateWordPairs().take(10)); /*4*/
        // }
        if (index >= alerts.length) {
          return null;
        }
        return _buildAlert(index);
      },
    );
  }

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
          body: _buildAlerts(),
        ),
      ),
    );
  }
}
