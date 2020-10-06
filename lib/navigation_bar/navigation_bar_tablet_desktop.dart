import 'package:flutter/material.dart';
import 'package:homepage/about_me/about_me.dart';
import 'package:homepage/app_content.dart';
import 'package:homepage/navigation_bar/navigation_bar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  final NavigationBarItemCallback onItemTap;

  const NavigationBarTabletDesktop({@required this.onItemTap, Key key})
      : assert(onItemTap != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
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
                  AboutMe(
                    navigationBarItemCallback: onItemTap,
                  ),
                ),
                title: "About Me",
              ),
            ],
          )
        ],
      ),
    );
  }
}
