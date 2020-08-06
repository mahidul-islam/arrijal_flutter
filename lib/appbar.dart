import 'package:ArRijal/login_screen.dart';
import 'package:ArRijal/searchpage.dart';
import 'package:flutter/material.dart';
import 'alert_page.dart';

class Choice {
  const Choice({this.title, this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'LogIn', icon: Icons.arrow_back),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
];

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);

  MyAppbar({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    _popUpMenuFunction(Choice choice) {
      Scaffold.of(context).hideCurrentSnackBar();
      final snackBar = SnackBar(
        content: Text(choice.title),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            Scaffold.of(context)
                .hideCurrentSnackBar(); // Some code to undo the change.
          },
        ),
      );
      if (choice.title == 'LogIn') {
        // print('This is login');
        Navigator.pushNamed(
          context,
          LoginScreen.routeName,
        );
      } else {
        Scaffold.of(context).showSnackBar(snackBar);
      }
      return null;
    }

    return AppBar(
      title: Text(title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            Navigator.pushNamed(
              context,
              SearchPage.routeName,
            );
          },
        ),
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            Navigator.pushNamed(
              context,
              AlertScreen.routeName,
            );
          },
        ),
        PopupMenuButton(
          onSelected: _popUpMenuFunction,
          itemBuilder: (BuildContext context) {
            return choices.map(
              (Choice choice) {
                return PopupMenuItem<Choice>(
                  value: choice,
                  child: Text(
                    choice.title,
                  ),
                );
              },
            ).toList();
          },
        )
      ],
    );
  }
}
