import 'package:flutter/material.dart';

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
];

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);

  MyAppbar({Key key, this.title}) : super(key: key);
  final String title;
  _popUpMenuFunction(Choice choice) {
    print(choice.title);
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.tag_faces),
          onPressed: () {
            final snackBar = SnackBar(
              content: Text('Yay! A SnackBar!'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  Scaffold.of(context)
                      .hideCurrentSnackBar(); // Some code to undo the change.
                },
              ),
            );
            Scaffold.of(context).showSnackBar(snackBar);
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
