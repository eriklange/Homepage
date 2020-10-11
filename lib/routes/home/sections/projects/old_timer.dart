import 'package:flutter/material.dart';
import 'package:homepage/widgets/section/section.dart';
import 'package:homepage/widgets/sectioned_view.dart';

class OldTimer extends SectionedView {
  static const String route = "/oldTimer";

  @override
  List<Section> get sections => [_OldTimerAbout()];
}

class _OldTimerAbout extends Section {
  _OldTimerAbout({Key key}) : super(title: "About", key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Hello");
  }
}
