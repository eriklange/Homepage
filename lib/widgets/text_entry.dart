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
    this.title = "",
    this.paragraphs = const [],
    this.maxWidth = 600,
    Key key,
  })  : assert(paragraphs != null),
        super(key: key);

  Widget _getTitle(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline4,
    );
  }

  Widget _getParagraph(ParagraphContent paragraphContent) {
    return Padding(
      padding: EdgeInsets.only(top: _paragraphPadding),
      child: Paragraph(
        paragraphContent: paragraphContent,
        maxWidth: maxWidth,
      )
    );
  }

  Widget _getContent(BuildContext context) {
    final paragraphWidgets = paragraphs
        .map(
          _getParagraph,
        )
        .toList()
        .cast<Widget>();

    return Column(
      children: paragraphWidgets,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(_padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getTitle(context),
          _getContent(context),
        ],
      ),
    );
  }
}
