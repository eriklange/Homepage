import 'package:flutter/material.dart';
import 'package:homepage/navigation_bar/navigation_bar_content.dart';
import 'package:homepage/utils/constants.dart';
import 'package:homepage/widgets/section/section.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class NavigationBar extends StatelessWidget with PreferredSizeWidget {
  final List<Section> sections;
  final ItemScrollController itemScrollController;
  @override
  Size get preferredSize => Size(0, 90);

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
          child: NavigationBarContent(
            sections: sections,
            itemScrollController: itemScrollController,
          ),
        ),
      ),
    );
  }
}
