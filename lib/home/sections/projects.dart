import 'package:flutter/material.dart';
import 'package:homepage/home/sections/section_header.dart';
import 'package:homepage/home/sections/welcome/project_tile.dart';

class Projects extends StatelessWidget {
  const Projects({Key key}) : super(key: key);

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
        Flexible(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            children: [
              ProjectTile(
                image: AssetImage('assets/images/fudge_icon.png'),
                title: "Fudge",
                summary: "A mobile app with drinking games",
              ),
              ProjectTile(
                image: AssetImage('assets/images/old_timer_icon.jpg'),
                title: "Old Timer",
                summary: "An app for next of kin to plan a relative's day",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
