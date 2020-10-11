import 'package:flutter/material.dart';
import 'package:homepage/app_theme.dart';
import 'package:homepage/home/home.dart';
import 'package:homepage/home/sections/projects/old_timer_view.dart';
import 'package:homepage/project_views/fudge_view.dart';

import 'app_content.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Erik',
      theme: AppTheme.theme,
      initialRoute: Home.route,
      routes: {
        Home.route: (context) => AppContent(body: Home()),
        FudgeView.route: (context) => AppContent(body: FudgeView()),
        OldTimerView.route: (context) => AppContent(body: OldTimerView()),
      },
    );
  }
}
