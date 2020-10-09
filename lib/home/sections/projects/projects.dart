import 'package:flutter/material.dart';
import 'package:homepage/home/sections/projects/old_timer_view.dart';
import 'package:homepage/home/sections/projects/project_tile.dart';
import 'package:homepage/home/sections/section_header.dart';
import 'package:homepage/project_views/fudge_view.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key key,
  }) : super(key: key);

  void _pushRoute(BuildContext context, String route) {
    Navigator.of(context).pushNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: "Projects",
        ),
        SizedBox(
          height: 20,
        ),
        ProjectTile(
          image: AssetImage('assets/images/fudge_icon.png'),
          title: "Fudge",
          summary: "A mobile app with drinking games",
          onTap: () => _pushRoute(context, FudgeView.route),
        ),
        ProjectTile(
          image: AssetImage('assets/images/old_timer_icon.jpg'),
          title: "Old Timer",
          summary: "An app for next of kin to plan a relative's day",
          onTap: () => _pushRoute(context, OldTimerView.route),
        ),
      ],
    );
  }
}
