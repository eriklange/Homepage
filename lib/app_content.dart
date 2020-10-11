import 'package:flutter/material.dart';
import 'package:homepage/navigation_bar/navigation_bar.dart';
import 'package:homepage/widgets/sectioned_view.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class AppContent extends StatelessWidget {
  final SectionedView sectionedView;

  AppContent({@required this.sectionedView, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemScrollController = ItemScrollController();

    return Scaffold(
      body: Column(
        children: [
          NavigationBar(
            sections: sectionedView.sections,
            itemScrollController: itemScrollController,
          ),
          Expanded(
            child: _ScrollableList(
              sectionedView: sectionedView,
              itemScrollController: itemScrollController,
            ),
          ),
        ],
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
