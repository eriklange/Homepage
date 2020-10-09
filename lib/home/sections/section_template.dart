import 'package:flutter/material.dart';
import 'package:homepage/home/sections/section_shadow.dart';
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
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: Constants.contentWidth,
            ),
            child: Padding(
              padding: EdgeInsets.all(50),
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  boxShadow: [
                    SectionShadow(),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
