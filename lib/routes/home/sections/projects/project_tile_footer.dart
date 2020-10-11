import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ProjectTileFooter extends StatelessWidget {
  final String title, summary;
  final Duration animationDuration;
  final double opacity;

  const ProjectTileFooter({
    @required this.title,
    @required this.summary,
    @required this.animationDuration,
    @required this.opacity,
    Key key,
  }) : super(key: key);

  Widget get icon => AnimatedOpacity(
        duration: animationDuration,
        opacity: opacity,
        child: Icon(
          FontAwesome.long_arrow_right,
        ),
      );

  Widget _getFooterText(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline3,
        ),
        AutoSizeText(
          summary,
          style: Theme.of(context).textTheme.subtitle1,
          maxLines: 2,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 8,
              child: _getFooterText(context),
            ),
            Expanded(
              flex: 2,
              child: icon,
            ),
          ],
        ),
      ),
    );
  }
}
