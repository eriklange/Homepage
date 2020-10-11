import 'package:flutter/material.dart';

class TextEntry extends StatelessWidget {
  final String title;
  final String body;
  final double maxWidth;

  const TextEntry({
    this.title = "",
    this.body = "",
    this.maxWidth = 600,
    Key key,
  }) : super(key: key);

  Widget _getTitle(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline4,
    );
  }

  Widget _getBody(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: Text(
        body,
        style: Theme.of(context).textTheme.bodyText2,
        textAlign: TextAlign.justify,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _getTitle(context),
        _getBody(context),
      ],
    );
  }
}
