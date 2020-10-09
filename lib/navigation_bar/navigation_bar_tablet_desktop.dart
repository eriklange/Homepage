import 'package:flutter/material.dart';
import 'package:homepage/home/home.dart';
import 'package:homepage/home/home_button.dart';
import 'package:homepage/navigation_bar/navigation_bar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HomeButton(),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            NavigationBarItem(
              onTap: () {},
              title: "Projects",
            ),
            SizedBox(
              width: 60,
            ),
            NavigationBarItem(
              onTap: () => Navigator.of(context).pushNamed(Home.route),
              title: "About Me",
            ),
          ],
        )
      ],
    );
  }
}
