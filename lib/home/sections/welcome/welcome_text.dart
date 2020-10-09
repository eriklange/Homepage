import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:homepage/links.dart';
import 'package:homepage/utils/url_helper.dart';

class WelcomeText extends StatelessWidget {
  final EdgeInsets padding;

  const WelcomeText({
    this.padding,
    Key key,
  }) : super(key: key);

  String get title => "Hi!";

  String get body =>
      "I am Erik, a software developer from Oslo, Norway, currently studying towards a Master's in Informatics at the University of Oslo. Afterwards, I will begin working at ";

  String get sopraSteria => "Sopra Steria";

  @override
  Widget build(BuildContext context) {
    final bodyTheme = Theme.of(context).textTheme.bodyText1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.fitHeight,
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Padding(
          padding: padding,
        ),
        Expanded(
          child: AutoSizeText.rich(
            TextSpan(
              text: body,
              style: bodyTheme,
              children: [
                TextSpan(
                  text: sopraSteria,
                  style: bodyTheme.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => UrlHelper.launchUrl(Links.sopraSteria),
                ),
                TextSpan(
                  text: ".",
                  style: bodyTheme,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
