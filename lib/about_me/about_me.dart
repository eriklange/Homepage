import 'package:age/age.dart';
import 'package:flutter/material.dart';
import 'package:homepage/app_content.dart';
import 'package:homepage/personal_template.dart';

class AboutMe extends StatelessWidget {
  static final _birthday = DateTime(1995, 9, 14);

  final NavigationBarItemCallback navigationBarItemCallback;

  const AboutMe({@required this.navigationBarItemCallback, Key key})
      : super(key: key);

  String get age {
    final myAge = Age.dateDifference(
      fromDate: _birthday,
      toDate: DateTime.now(),
      includeToDate: false,
    );

    return myAge.years.toString();
  }

  Widget get summary {
    return InfoRow(
      title: "About Me",
      description:
          "I am a $age year old software developer from Oslo, Norway, who enjoys video games & software development.",
    );
  }

  Widget get education {
    return InfoRow(
      title: "Education",
      description:
          "From 2016-2019, I attended University of Essex, where I graduated from the BSc Computer Science with Honors. Following graduation, I am pursuing a Master's in Informatics at the University of Oslo, where I will graduate June 2021.",
    );
  }

  Widget get projects {
    return InfoRow(
      title: "Projects",
      description:
          "One of my hobbies is to develop applications. Head over to Projects to learn more about what I am developing.",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PersonalTemplate(),
        SizedBox(
          height: 20,
        ),
        Column(
          children: [
            summary,
            education,
            projects,
          ],
        ),
      ],
    );
  }
}

class InfoRow extends StatelessWidget {
  final String title;
  final String description;
  const InfoRow({
    @required this.title,
    @required this.description,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 650,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              title,
              style: Theme.of(context).textTheme.headline4,
            ),
            SelectableText(
              description,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
