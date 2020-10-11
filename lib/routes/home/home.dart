import 'package:flutter/material.dart';
import 'package:homepage/routes/home/sections/experience/experience.dart';
import 'package:homepage/routes/home/sections/projects/projects.dart';
import 'package:homepage/routes/home/sections/welcome/welcome.dart';
import 'package:homepage/widgets/sectioned_view.dart';
import 'package:homepage/widgets/section/section.dart';

class Home extends SectionedView {
  static String route = "/home";

  Home({Key key}) : super(key: key);

  List<Section> get sections => [
        Welcome(),
        Projects(),
        Experience(),
      ];
}
