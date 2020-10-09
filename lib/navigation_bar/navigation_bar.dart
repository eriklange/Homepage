import 'package:flutter/material.dart';
import 'package:homepage/app_content.dart';
import 'package:homepage/navigation_bar/navigation_bar_mobile.dart';
import 'package:homepage/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'package:homepage/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  final NavigationBarItemCallback onItemTap;

  const NavigationBar({@required this.onItemTap, Key key})
      : assert(onItemTap != null),
        super(key: key);

  Radius get borderRadius => Radius.circular(40);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).appBarTheme.color,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SizedBox(
          height: Constants.navigationBarHeight,
          child: ScreenTypeLayout(
            mobile: NavigationBarMobile(onItemTap: onItemTap),
            tablet: NavigationBarTabletDesktop(onItemTap: onItemTap),
          ),
        ),
      ),
    );
  }
}
