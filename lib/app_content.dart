import 'package:flutter/material.dart';
import 'package:homepage/navigation_bar/navigation_bar.dart';

class AppContent extends StatelessWidget {
  final Widget body;

  AppContent({@required this.body, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavigationBar(),
          Expanded(
            child: ListView(shrinkWrap: true, children: [
              body,
            ]),
          ),
        ],
      ),
    );
  }
}
