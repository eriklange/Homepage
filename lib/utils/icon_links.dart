import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:homepage/utils/links.dart';
import 'package:homepage/utils/url_helper.dart';

class IconLinks {
  static const github = _IconLinkButton(
      title: "GitHub", icon: AntDesign.github, url: Links.github);
  static const linkedin = _IconLinkButton(
      title: "LinkedIn", icon: AntDesign.linkedin_square, url: Links.linkedin);

  static final email =
      _IconLinkButton(title: "Contact", icon: Entypo.mail, url: Links.email);
}

class _IconLinkButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final String url;

  const _IconLinkButton({
    @required this.title,
    @required this.icon,
    @required this.url,
    Key key,
  })  : assert(icon != null && url != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: FlatButton(
        child: Row(
          children: [
            Text(title, style: Theme.of(context).textTheme.headline4),
            SizedBox(width: 5),
            Icon(icon),
          ],
        ),
        onPressed: () => UrlHelper.launchUrl(url),
      )
    );
  }
}
