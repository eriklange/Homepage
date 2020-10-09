import 'package:flutter/material.dart';

class MyColorScheme {
  int _counter = 0;

  List<Color> _colors = [
    Colors.white,
  ];

  get color {
    return _colors[_counter++ % _colors.length];
  }
}
