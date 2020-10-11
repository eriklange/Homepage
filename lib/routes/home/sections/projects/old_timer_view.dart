import 'package:flutter/material.dart';
import 'package:homepage/widgets/section/section.dart';
import 'package:homepage/widgets/sectioned_view.dart';

class OldTimerView extends SectionedView {
  static const String route = "oldTimer";

  OldTimerView({Key key}) : super(key: key);

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
