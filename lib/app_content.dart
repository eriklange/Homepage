import 'package:flutter/material.dart';
import 'package:homepage/home/home.dart';
import 'package:homepage/navigation_bar/navigation_bar.dart';

typedef void NavigationBarItemCallback(Widget target);

class AppContent extends StatefulWidget {
  AppContent({Key key}) : super(key: key);

  @override
  _AppContentState createState() => _AppContentState();
}

class _AppContentState extends State<AppContent> {
  Widget _visibleWidget;

  void _onNavigationBarItemTap(Widget target) {
    setState(() {
      _visibleWidget = target;
    });
  }

  @override
  void initState() {
    super.initState();
    _visibleWidget = Home(
      navigationBarItemCallback: _onNavigationBarItemTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavigationBar(onItemTap: _onNavigationBarItemTap),
            _visibleWidget,
          ],
        ),
      ),
    );
  }
}
