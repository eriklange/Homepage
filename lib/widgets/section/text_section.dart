import 'package:flutter/material.dart';
import 'section.dart';

import '../text_entry.dart';

class TextSection extends Section {
  final List<TextEntry> textEntries;
  final Color color;

  TextSection({
    @required this.textEntries,
    @required String title,
    @required this.color,
    Key key,
  }) : super(title: title, key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        children: textEntries,
      ),
    );
  }
}
