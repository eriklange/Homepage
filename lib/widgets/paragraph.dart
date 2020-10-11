import 'package:flutter/material.dart';
import 'package:homepage/widgets/paragraph_text.dart';

class Paragraph extends StatelessWidget {
  final ParagraphContent paragraphContent;
  final double maxWidth;

  const Paragraph({
    @required this.paragraphContent,
    @required this.maxWidth,
    Key key,
  }) : super(key: key);

  Widget _getTitle(BuildContext context) {
    return Text(
      paragraphContent.subtitle,
      style: Theme.of(context).textTheme.bodyText2.copyWith(
            decoration: TextDecoration.underline,
          ),
      textAlign: TextAlign.left,
    );
  }

  Widget _getBody(BuildContext context) {
    return Text(
      paragraphContent.body,
      style: Theme.of(context).textTheme.bodyText2,
      textAlign: TextAlign.justify,
    );
  }

  List<Widget> _getContent(BuildContext context) {
    final children = <Widget>[
      _getBody(context),
    ];

    if (paragraphContent.subtitle != null) {
      children.insert(0, _getTitle(context));
    }

    return children;
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _getContent(context),
      ),
    );
  }
}
