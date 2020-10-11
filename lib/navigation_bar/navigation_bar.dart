import 'package:flutter/material.dart';
import 'package:homepage/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'package:homepage/utils/constants.dart';
import 'package:homepage/widgets/section/section.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  final List<Section> sections;

  const NavigationBar({
    @required this.sections,
    Key key,
  })  : assert(sections != null),
        super(key: key);

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
            mobile: NavigationBarContent(
              sections: sections,
              mobile: true,
            ),
            tablet: NavigationBarContent(
              sections: sections,
              mobile: false,
            ),
          ),
        ),
      ),
    );
  }
}
