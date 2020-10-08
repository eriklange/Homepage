import 'package:flutter/material.dart';
import 'package:homepage/utils/constants.dart';

class SectionTemplate extends StatelessWidget {
  final Color color;
  final Widget child;

  const SectionTemplate({
    @required this.color,
    @required this.child,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Container(
        color: color,
        child: Container(
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: Constants.contentWidth / 2.5,
                maxWidth: Constants.contentWidth,
              ),
              child: Padding(
                padding: EdgeInsets.all(50),
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
