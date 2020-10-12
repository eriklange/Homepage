import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final EdgeInsets padding;

  const NavigationBarItem({
    @required this.title,
    @required this.onTap,
    this.padding,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onTap,
      child: Container(
        padding: padding,
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).appBarTheme.textTheme.button,
          ),
        ),
      ),
    );
  }
}
