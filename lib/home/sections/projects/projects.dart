import 'package:flutter/material.dart';
import 'package:homepage/home/sections/projects/old_timer_view.dart';
import 'package:homepage/home/sections/projects/project_tile.dart';
import 'package:homepage/home/sections/section_header.dart';
import 'package:homepage/project_views/fudge_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Projects extends StatelessWidget {
  const Projects({Key key}) : super(key: key);

  void _pushRoute(BuildContext context, String route) {
    Navigator.of(context).pushNamed(route);
  }

  double _getWidth(BuildContext context, smallScreen) {
    final ratio = smallScreen ? 0.9 : 0.4;
    final width = MediaQuery.of(context).size.width * ratio;

    return width;
  }

  List<Widget> _getTiles(BuildContext context, bool smallScreen) {
    final width = _getWidth(context, smallScreen);

    return [
      ProjectTile(
        image: AssetImage('assets/images/fudge_icon.png'),
        title: "Fudge",
        summary: "A drinking game app",
        width: width,
        onTap: () => _pushRoute(context, FudgeView.route),
      ),
      ProjectTile(
        image: AssetImage('assets/images/old_timer_icon.jpg'),
        title: "Old Timer",
        summary: "A next of kin planner app",
        width: width,
        onTap: () => _pushRoute(context, OldTimerView.route),
      ),
    ];
    
  }

  Widget _getContent(BuildContext context, bool smallScreen) {
    final tiles = _getTiles(context, smallScreen);

    if (smallScreen) {
      return Column(children: tiles);
    }

    final expandedTiles = tiles.map((e) => Expanded(child: e,)).toList().cast<Widget>();
    return Row(children: expandedTiles);
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
        ScreenTypeLayout(
          mobile: _getContent(context, true),
          desktop: _getContent(context, false),
        ),
      ],
    );
  }
}
