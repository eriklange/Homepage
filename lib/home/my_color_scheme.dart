import 'package:flutter/material.dart';

class MyColorScheme {
  int _counter = 0;

  List<Color> _colors = [
    Colors.white,
    Color.fromRGBO(245, 242, 240, 1),
  ];

  get color {
    return _colors[_counter++ % _colors.length];
  }
}
