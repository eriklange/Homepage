import 'package:flutter/material.dart';
import 'package:homepage/icons/icon_links.dart';
import 'package:homepage/profile_picture.dart';

class PersonalTemplate extends StatelessWidget {
  const PersonalTemplate({Key key}) : super(key: key);

  Widget get separator => SizedBox(height: 20);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ProfilePicture(),
        separator,
        Text("Erik Erdahl Lange", style: Theme.of(context).textTheme.headline5,),
        separator,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconLinks.github,
            IconLinks.linkedin,
            IconLinks.email,
          ],
        ),
      ],
    );
  }
}
