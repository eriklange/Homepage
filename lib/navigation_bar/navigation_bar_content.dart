import 'package:flutter/material.dart';
import 'package:homepage/navigation_bar/home_button.dart';
import 'package:homepage/navigation_bar/navigation_bar_item.dart';
import 'package:homepage/widgets/section/section.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class NavigationBarContent extends StatelessWidget {
  final List<Section> sections;
  final bool mobile;
  final ItemScrollController itemScrollController;

  const NavigationBarContent({
    @required this.sections,
    @required this.mobile,
    @required this.itemScrollController,
    Key key,
  })  : assert(sections != null),
        super(key: key);

  Widget get spacing => SizedBox(width: 30);

  Widget _getBarItem(Section section, int index) {
    return NavigationBarItem(
      onTap: () => itemScrollController.scrollTo(
          index: index,
          duration: Duration(milliseconds: 500),
          curve: Curves.linearToEaseOut),
      title: section.title,
    );
  }

  Widget _getChildren(BuildContext context) {
    final List<Widget> children = [];

    for (var i = 0; i < sections.length; i++) {
      final section = sections[i];
      children.add(_getBarItem(section, i));
      children.add(spacing);
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: children,
    );
  }

  Widget _getDropdownMenu() {
    return IconButton(
      icon: Icon(Icons.menu),
      onPressed: () {},
    );
  }

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HomeButton(),
        mobile ? _getDropdownMenu() : _getChildren(context),
      ],
    );
  }
}
