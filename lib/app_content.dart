import 'package:flutter/material.dart';
import 'package:homepage/navigation_bar/navigation_bar.dart';
import 'package:homepage/widgets/sectioned_view.dart';

class AppContent extends StatelessWidget {
  final SectionedView sectionedView;

  AppContent({@required this.sectionedView, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavigationBar(
            sections: sectionedView.sections,
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                sectionedView,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
