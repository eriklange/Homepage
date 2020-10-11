import 'package:flutter/material.dart';
import 'package:homepage/widgets/paragraph.dart';
import 'package:homepage/widgets/paragraph_text.dart';

class TextEntry extends StatelessWidget {
  static const double _padding = 30;
  static const double _paragraphPadding = _padding / 2;

  final String title;
  final List<ParagraphContent> paragraphs;
  final double maxWidth;

  const TextEntry({
    this.title,
    this.paragraphs = const [],
    this.maxWidth = 600,
    Key key,
  })  : assert(paragraphs != null),
        super(key: key);

  EdgeInsets get contentPadding => title == null
      ? EdgeInsets.symmetric(horizontal: _paragraphPadding)
      : EdgeInsets.all(_padding);

  Widget _getTitle(BuildContext context) {
    return title == null
        ? Container()
        : Text(
            title,
            style: Theme.of(context).textTheme.headline4,
          );
  }

  Widget _getParagraph(ParagraphContent paragraphContent) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: _paragraphPadding),
      child: Paragraph(
        paragraphContent: paragraphContent,
        maxWidth: maxWidth,
      ),
    );
  }

  List<Widget> _getContent(BuildContext context) {
    final content = [_getTitle(context)];

    final paragraphWidgets = paragraphs
        .map(
          _getParagraph,
        )
        .toList()
        .cast<Widget>();

    content.addAll(paragraphWidgets);

    return content;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: contentPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _getContent(context),
      ),
    );
  }
}
