import 'package:flutter/material.dart';
import 'package:homepage/utils/constants.dart';
import 'package:homepage/utils/scroll_assist.dart';
import 'package:homepage/widgets/my_color_scheme.dart';
import 'package:homepage/widgets/section/section.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'navigation_bar_item.dart';

class NavigationDrawer extends StatelessWidget {
  final List<Section> sections;
  final ItemScrollController itemScrollController;

  const NavigationDrawer({
    @required this.sections,
    @required this.itemScrollController,
    Key key,
  }) : super(key: key);

  Widget _getHeader(BuildContext context) {
    return SizedBox(
      height: Constants.navigationBarHeight,
      child: Container(
        color: MyColorScheme.colors[1],
        child: Center(
          child: Text(
            "Sections",
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ),
    );
  }

  List<Widget> _getTiles(BuildContext context) {
    final List<Widget> listTiles = [];

    for (var i = 0; i < sections.length; i++) {
      final section = sections[i];

      final tile = NavigationBarItem(
        title: section.title,
        padding: EdgeInsets.all(15),
        onTap: () {
          Navigator.of(context).pop();
          ScrollAssist.scrollTo(itemScrollController, i);
        },
      );

      listTiles.add(tile);
    }

    return listTiles;
  }

  List<Widget> _getContent(BuildContext context) {
    final List<Widget> listChildren = [_getHeader(context)];

    listChildren.addAll(_getTiles(context));

    return listChildren;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: _getContent(context),
      ),
    );
  }
}
