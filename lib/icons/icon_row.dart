import 'package:flutter/material.dart';
import 'package:homepage/icons/icon_links.dart';

class IconRow extends StatelessWidget {
  const IconRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconLinks.github,
        IconLinks.linkedin,
        IconLinks.email,
      ],
    );
  }
}
