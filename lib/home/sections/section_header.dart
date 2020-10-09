import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({
    @required this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline2,
      textAlign: TextAlign.start,
    );
  }
}
