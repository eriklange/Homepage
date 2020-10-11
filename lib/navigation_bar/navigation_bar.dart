import 'package:flutter/material.dart';
import 'package:homepage/navigation_bar/navigation_bar_content.dart';
import 'package:homepage/utils/constants.dart';
import 'package:homepage/widgets/section/section.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class NavigationBar extends StatelessWidget {
  final List<Section> sections;
  final ItemScrollController itemScrollController;

  const NavigationBar({
    @required this.sections,
    @required this.itemScrollController,
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
              itemScrollController: itemScrollController,
              mobile: true,
            ),
            tablet: NavigationBarContent(
              sections: sections,
              itemScrollController: itemScrollController,
              mobile: false,
            ),
          ),
        ),
      ),
    );
  }
}
