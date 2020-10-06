import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const NavigationBarItem({@required this.title, @required this.onTap, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onTap,
      child: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
