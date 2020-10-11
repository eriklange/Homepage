import 'package:flutter/material.dart';
import 'package:homepage/utils/constants.dart';
import 'package:homepage/widgets/section/section.dart';

import 'section_header.dart';

class SectionTemplate extends StatelessWidget {
  final Color color;
  final Section section;
  const SectionTemplate({
    @required this.color,
    @required this.section,
    Key key,
  }) : super(key: key);

  String get title => section.title;

  Widget get content {
    final children = [
      SizedBox(height: 20),
      section,
    ];

    if (section.displayTitle) {
      children.insert(0, SectionHeader(title: title));
    }

    return Column(
      children: children,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: Constants.contentWidth,
              ),
              child: Container(
                padding: EdgeInsets.all(50),
                child: content,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
