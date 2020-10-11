import 'package:flutter/material.dart';
import 'package:homepage/widgets/routed_page.dart';
import 'package:homepage/widgets/section/section.dart';

class Fudge extends SectionedView {
  static const String route = "/fudge";

  Fudge({Key key}) : super(key: key);

  @override
  List<Section> get sections => [_FudgeAbout()];
}

class _FudgeAbout extends Section {
  @override
  Widget build(BuildContext context) {
    return Text("Hello");
  }

  @override
  String get title => "About";
}
