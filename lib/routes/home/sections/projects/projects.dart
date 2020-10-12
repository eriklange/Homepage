import 'package:flutter/material.dart';
import 'package:homepage/routes/fudge/fudge.dart';
import 'package:homepage/routes/old_timer.dart';
import 'package:homepage/routes/home/sections/projects/project_tile.dart';
import 'package:homepage/utils/asset_helper.dart';
import 'package:homepage/widgets/section/section.dart';

class Projects extends Section {
  Projects({Key key}) : super(title: "Projects", key: key);

  void _pushRoute(BuildContext context, String route) {
    Navigator.of(context).pushNamed(route);
  }

  List<Widget> _getTiles(BuildContext context, bool smallScreen) {
    return [
      ProjectTile(
        image: AssetHelper.fudgeIcon,
        title: "Fudge",
        summary: "A drinking game app",
        onTap: () => _pushRoute(context, Fudge.route),
      ),
      ProjectTile(
        image: AssetHelper.oldTimerIcon,
        title: "Old Timer",
        summary: "A planner app for next of kin",
        onTap: () => _pushRoute(context, OldTimer.route),
      ),
    ];
  }

  Widget _getSizedContent(
      BuildContext context, bool smallScreen, Widget child) {
    final screenWidth = MediaQuery.of(context).size.width;
    final ratio = smallScreen ? 0.6 : 0.45;

    return SizedBox(
      width: screenWidth * ratio,
      child: child,
    );
  }

  Widget _getRow(List<Widget> tiles) {
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

  Widget _getContent(BuildContext context, bool smallScreen) {
    final tiles = _getTiles(context, smallScreen);

    final content = smallScreen ? Column(children: tiles) : _getRow(tiles);

    return _getSizedContent(context, smallScreen, content);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final smallScreen = screenWidth <= 1200;

    return _getContent(context, smallScreen);
  }
}
