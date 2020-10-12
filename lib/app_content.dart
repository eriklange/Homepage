import 'package:flutter/material.dart';
import 'package:homepage/navigation_bar/navigation_bar.dart';
import 'package:homepage/widgets/sectioned_view.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'navigation_bar/navigation_drawer.dart';

class AppContent extends StatefulWidget {
  final SectionedView sectionedView;

  AppContent({@required this.sectionedView, Key key}) : super(key: key);

  @override
  _AppContentState createState() => _AppContentState();
}

class _AppContentState extends State<AppContent> {
  SectionedView get sectionedView => widget.sectionedView;
  @override
  Widget build(BuildContext context) {
    final itemScrollController = ItemScrollController();

    return Scaffold(
      appBar: NavigationBar(
        sections: sectionedView.sections,
        itemScrollController: itemScrollController,
      ),
      body: _ScrollableList(
        sectionedView: sectionedView,
        itemScrollController: itemScrollController,
      ),
      endDrawer: NavigationDrawer(
        sections: sectionedView.sections,
        itemScrollController: itemScrollController,
      ),
    );
  }
}

class _ScrollableList extends StatefulWidget {
  final SectionedView sectionedView;
  final ItemScrollController itemScrollController;

  _ScrollableList({
    @required this.sectionedView,
    @required this.itemScrollController,
    Key key,
  }) : super(key: key);

  @override
  __ScrollableListState createState() => __ScrollableListState();
}

class __ScrollableListState extends State<_ScrollableList> {
  @override
  Widget build(BuildContext context) {
    final sections = widget.sectionedView.build();

    return ScrollablePositionedList.builder(
      itemCount: sections.length,
      itemBuilder: (_, index) => sections[index],
      itemScrollController: widget.itemScrollController,
    );
  }
}
