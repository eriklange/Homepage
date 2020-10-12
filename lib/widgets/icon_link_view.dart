import 'package:flutter/material.dart';
import 'package:homepage/utils/icon_links.dart';

class IconLinkView extends StatelessWidget {
  const IconLinkView({Key key}) : super(key: key);

  List<Widget> get children => [
        IconLinks.github,
        IconLinks.linkedin,
        IconLinks.email,
      ];

  Widget get column => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      );

  Widget get row => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: children,
      );

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return screenWidth > 1200 ? row : column;
  }
}
