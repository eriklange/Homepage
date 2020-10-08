import 'package:flutter/material.dart';

import 'app_content.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Erik',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          textTheme: TextTheme(
            button: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 50,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
          
          headline2: TextStyle(
            fontSize: 40,
            color: Colors.black,
          ),

          bodyText1: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
          bodyText2: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      home: AppContent(),
    );
  }
}
