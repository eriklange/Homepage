import 'package:flutter/material.dart';
import 'package:homepage/routes/fudge/fudge.dart';
import 'package:homepage/routes/home/sections/projects/old_timer_view.dart';
import 'package:homepage/routes/home/sections/projects/project_tile.dart';
import 'package:homepage/widgets/section/section.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Projects extends Section {
  Projects({Key key}) : super(title: "Projects", key: key);

  void _pushRoute(BuildContext context, String route) {
    Navigator.of(context).pushNamed(route);
  }

  List<Widget> _getTiles(BuildContext context, bool smallScreen) {
    return [
      ProjectTile(
        image: AssetImage('assets/images/fudge_icon.png'),
        title: "Fudge",
        summary: "A drinking game app",
        onTap: () => _pushRoute(context, Fudge.route),
      ),
      ProjectTile(
        image: AssetImage('assets/images/old_timer_icon.jpg'),
        title: "Old Timer",
        summary: "A next of kin planner app",
        onTap: () => _pushRoute(context, OldTimerView.route),
      ),
    ];
  }

  Widget _getContent(BuildContext context, bool smallScreen) {
    final tiles = _getTiles(context, smallScreen);

    if (smallScreen) {
      return Column(children: tiles);
    }

    final expandedTiles = tiles
        .map(
          (e) => Expanded(
            child: e,
          ),
        )
        .toList()
        .cast<Widget>();

    return Row(children: expandedTiles);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _getContent(context, true),
      desktop: _getContent(context, false),
    );
  }
}
