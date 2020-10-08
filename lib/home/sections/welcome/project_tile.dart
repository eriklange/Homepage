import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectTile extends StatelessWidget {
  final AssetImage image;
  final String title;
  final String summary;

  const ProjectTile({
    @required this.image,
    @required this.title,
    @required this.summary,
    Key key,
  }) : super(key: key);

  Widget _getContent(BuildContext context, bool smallScreen) {

    final ratio = smallScreen ? 0.9 : 0.4;
    final size = MediaQuery.of(context).size.width * ratio;

    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size,
            width: size,
            child: Image(
              image: image,
            ),
          ),
          Text(title),
          Text(summary),
        ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _getContent(context, true),
      desktop: _getContent(context, false),
    );
  }
}
