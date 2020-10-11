import 'package:flutter/material.dart';

class MyColorScheme {
  int _counter = 0;

  static List<Color> colors = [
    Colors.white,
    Color.fromRGBO(245, 242, 240, 1),
  ];

  get color {
    return colors[_counter++ % colors.length];
  }
}
