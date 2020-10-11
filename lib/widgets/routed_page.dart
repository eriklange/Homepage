import 'package:flutter/material.dart';
import 'package:homepage/widgets/my_color_scheme.dart';
import 'package:homepage/widgets/section/section.dart';
import 'package:homepage/widgets/section/section_template.dart';

abstract class SectionedView extends StatelessWidget {
  final MyColorScheme _colorScheme = MyColorScheme();

  SectionedView({Key key}) : super(key: key);

  Widget _getSection(Section section) {
    return SectionTemplate(
      color: _colorScheme.color,
      section: section,
    );
  }

  List<Widget> _getSections() {
    return sections
        .map(
          _getSection,
        )
        .toList()
        .cast<Widget>();
  }

  List<Section> get sections;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _getSections(),
    );
  }
}
