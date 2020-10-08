import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:homepage/links.dart';
import 'package:homepage/utils/url_helper.dart';

class IconLinks {
  static const github =
      _IconLinkButton(icon: AntDesign.github, url: Links.github);
  static const linkedin =
      _IconLinkButton(icon: AntDesign.linkedin_square, url: Links.linkedin);

  static final email = _IconLinkButton(icon: Entypo.mail, url: Links.email);
}

class _IconLinkButton extends StatelessWidget {
  final IconData icon;
  final String url;

  const _IconLinkButton({
    @required this.icon,
    @required this.url,
    Key key,
  })  : assert(icon != null && url != null),
        super(key: key);
        
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 40,
      icon: Icon(
        icon,
      ),
      onPressed: () => UrlHelper.launchUrl(url),
    );
  }
}
