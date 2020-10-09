import 'package:flutter/material.dart';
import 'package:homepage/app_content.dart';

class NavigationBarMobile extends StatelessWidget {
  final NavigationBarItemCallback onItemTap;

  const NavigationBarMobile({@required this.onItemTap, Key key})
      : assert(onItemTap != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ],
    );
  }
}
