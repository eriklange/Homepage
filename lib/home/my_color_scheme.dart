import 'package:flutter/material.dart';

class MyColorScheme {
  int _counter = 0;

  List<Color> _colors = [
    Colors.white,
    Colors.white,
    // Color.fromRGBO(246, 247, 205, 1),
    // Color.fromRGBO(223, 228, 155, 1),
  ];

  get color {
    return _colors[_counter++ % _colors.length];
  }
}
