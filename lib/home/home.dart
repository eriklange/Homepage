import 'package:flutter/material.dart';
import 'package:homepage/home/sections/section_template.dart';
import 'package:homepage/home/my_color_scheme.dart';
import 'package:homepage/home/sections/welcome/welcome.dart';
import 'package:homepage/home/sections/projects.dart';
import 'package:homepage/app_content.dart';

class Home extends StatelessWidget {
  final NavigationBarItemCallback navigationBarItemCallback;
  final MyColorScheme colorScheme = MyColorScheme();

  Home({@required this.navigationBarItemCallback, Key key}) : super(key: key);

  final List<Widget> sections = [Welcome(), Projects()];

  _getSection(Widget child) {
    return SectionTemplate(
      color: colorScheme.color,
      child: child,
    );
  }

  _getSections() => sections.map(_getSection).toList().cast<Widget>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _getSections(),
    );
  }
}
