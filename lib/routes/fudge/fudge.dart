import 'package:flutter/material.dart';
import 'package:homepage/widgets/my_color_scheme.dart';
import 'package:homepage/widgets/paragraph_text.dart';
import 'package:homepage/widgets/section/section.dart';
import 'package:homepage/widgets/sectioned_view.dart';
import 'package:homepage/widgets/text_entry.dart';

class Fudge extends SectionedView {
  static const String route = "/fudge";

  @override
  List<Section> get sections => [_FudgeAbout()];
}

class _FudgeAbout extends Section {
  _FudgeAbout({Key key}) : super(title: "Fudge", key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColorScheme.colors[1],
      child: Column(
        children: [
          TextEntry(
            paragraphs: [
              ParagraphContent(subtitle: "Drinking Games", body: "Testing")
            ],
          )
        ]
      )
    );
  }
}
