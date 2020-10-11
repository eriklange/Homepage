import 'package:flutter/material.dart';
import 'package:homepage/utils/asset_helper.dart';
import 'package:homepage/utils/url_helper.dart';
import 'package:homepage/widgets/section/section.dart';

class Resources extends Section {
  const Resources({Key key}) : super(title: "Resources", key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: FlatButton(
        hoverColor: Colors.transparent,
        onPressed: () => UrlHelper.launchUrl(
            "https://play.google.com/store/apps/details?id=fudge.fudge_cross_platform"),
        child: AssetHelper.googlePlayBadge,
      ),
    );
  }
}
