import 'package:flutter/material.dart';
import 'package:homepage/utils/icon_links.dart';

class SocialIconRow extends StatelessWidget {
  const SocialIconRow({Key key}) : super(key: key);

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
