import 'package:flutter/material.dart';
import 'package:homepage/navigation_bar/home_button.dart';
import 'package:homepage/navigation_bar/navigation_bar_item.dart';
import 'package:homepage/utils/scroll_assist.dart';
import 'package:homepage/widgets/section/section.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class NavigationBarContent extends StatelessWidget {
  final List<Section> sections;
  final ItemScrollController itemScrollController;

  const NavigationBarContent({
    @required this.sections,
    @required this.itemScrollController,
    Key key,
  })  : assert(sections != null),
        super(key: key);

  Widget get spacing => SizedBox(width: 30);

  Widget _getBarItem(Section section, int index) {
    return NavigationBarItem(
      onTap: () => ScrollAssist.scrollTo(itemScrollController, index),
      title: section.title,
    );
  }

  Widget _getSections() {
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

  Widget _getDropdownMenu(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.menu),
      onPressed: Scaffold.of(context).openEndDrawer,
    );
  }

  Widget _getContent(BuildContext context, bool mobile) {
    final List<Widget> children = [HomeButton()];

    final additionalChild = mobile ? _getDropdownMenu(context) : _getSections();

    children.add(additionalChild);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: children,
    );
  }

  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _getContent(context, true),
      desktop: _getContent(context, false),
    );
  }
}
