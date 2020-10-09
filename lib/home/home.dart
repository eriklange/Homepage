import 'package:flutter/material.dart';
import 'package:homepage/home/sections/projects/projects.dart';
import 'package:homepage/home/sections/section_template.dart';
import 'package:homepage/home/my_color_scheme.dart';
import 'package:homepage/home/sections/welcome/welcome.dart';

class Home extends StatelessWidget {
  static const String route = "/home";

  final MyColorScheme colorScheme = MyColorScheme();

  Home({
    Key key,
  }) : super(key: key);

  _getSection(Widget child) {
    return SectionTemplate(
      color: colorScheme.color,
      child: child,
    );
  }

  _getSections() {
    List<Widget> sections = [
      Welcome(),
      Projects(),
    ];

    return sections.map(_getSection).toList().cast<Widget>();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _getSections(),
    );
  }
}
