import 'package:flutter/material.dart';
import 'package:homepage/app_theme.dart';
import 'package:homepage/routes/fudge/fudge.dart';
import 'package:homepage/routes/home/home.dart';
import 'package:homepage/routes/home/sections/projects/old_timer.dart';

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
        Home.route: (context) => AppContent(sectionedView: Home()),
        Fudge.route: (context) => AppContent(sectionedView: Fudge()),
        OldTimer.route: (context) => AppContent(sectionedView: OldTimer()),
      },
    );
  }
}
