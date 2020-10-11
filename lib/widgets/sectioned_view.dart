import 'package:flutter/material.dart';
import 'package:homepage/widgets/my_color_scheme.dart';
import 'package:homepage/widgets/section/section.dart';
import 'package:homepage/widgets/section/section_template.dart';

abstract class SectionedView {
  final MyColorScheme _colorScheme = MyColorScheme();

  Widget _getSection(Section section) {
    return SectionTemplate(
      color: _colorScheme.color,
      section: section,
    );
  }

  List<Section> get sections;

  List<Widget> build() {
    return sections
        .map(
          _getSection,
        )
        .toList()
        .cast<Widget>();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Column(
  //     children: _getSections(),
  //   );
  // }
}
