import 'package:flutter/material.dart';

abstract class Section extends StatelessWidget {
  const Section({
    @required this.title,
    this.displayTitle = true,
    Key key,
  })  : assert(title != null),
        super(key: key);

  final String title;
  final bool displayTitle;
}
