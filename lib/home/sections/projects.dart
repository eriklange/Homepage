import 'package:flutter/material.dart';
import 'package:homepage/home/sections/welcome/project_tile.dart';

class Projects extends StatelessWidget {
  const Projects({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProjectTile(
          image: AssetImage('assets/images/fudge_icon.png'),
          title: "Fudge",
          summary: "A mobile app with drinking games",
        ),
      ],
    );
  }
}
