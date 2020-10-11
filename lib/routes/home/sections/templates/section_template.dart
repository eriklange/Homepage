import 'package:flutter/material.dart';
import 'package:homepage/utils/constants.dart';

import 'section_header.dart';

class SectionTemplate extends StatelessWidget {
  final Color color;
  final Widget child;
  final String title;

  const SectionTemplate({
    @required this.color,
    @required this.child,
    this.title,
    Key key,
  }) : super(key: key);

  Widget get content {
    final children = [
      SizedBox(height: 20),
      child,
    ];

    if (title != null) {
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
