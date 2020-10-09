import 'package:flutter/material.dart';
import 'package:homepage/home/home.dart';
import 'package:homepage/app_content.dart';
import 'package:homepage/navigation_bar/navigation_bar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  final NavigationBarItemCallback onItemTap;

  const NavigationBarTabletDesktop({@required this.onItemTap, Key key})
      : assert(onItemTap != null),
        super(key: key);

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            NavigationBarItem(
              onTap: () => onItemTap(Container()),
              title: "Projects",
            ),
            SizedBox(
              width: 60,
            ),
            NavigationBarItem(
              onTap: () => onItemTap(
                Home(
                  navigationBarItemCallback: onItemTap,
                ),
              ),
              title: "About Me",
            ),
          ],
        )
      ],
    );
  }
}
