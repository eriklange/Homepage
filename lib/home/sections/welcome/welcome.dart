import 'package:flutter/material.dart';
import 'package:homepage/home/sections/section.dart';
import 'package:homepage/home/sections/welcome/welcome_text.dart';
import 'package:homepage/icons/icon_row.dart';
import 'package:homepage/home/sections/welcome/profile_picture.dart';
import 'package:homepage/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Welcome extends Section {
  static const padding = EdgeInsets.symmetric(vertical: 15);

  @override
  get title => null;

  const Welcome({Key key}) : super(key: key);

  List<Widget> _getRowChildren(bool isTablet, BoxConstraints constraints) {
    final List<Widget> children = [
      _RowChild(
        boxConstraints: constraints,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: constraints.maxHeight / 1.5),
          child: Column(
            children: [
              Expanded(
                child: WelcomeText(
                  padding: padding,
                ),
              ),
              Padding(
                padding: padding,
              ),
              IconRow(),
            ],
          ),
        ),
      ),
    ];

    if (isTablet) {
      children.add(
        Padding(padding: padding),
      );
      children.add(
        _RowChild(
          boxConstraints: constraints,
          child: ProfilePicture(
            maxHeight: 600,
          ),
        ),
      );
    }

    return children;
  }

  Widget _getRow(bool isTablet) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _getRowChildren(isTablet, constraints),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: Constants.contentWidth / 2.5,
        maxWidth: Constants.contentWidth,
      ),
      child: ScreenTypeLayout(
        tablet: _getRow(true),
        mobile: _getRow(false),
      ),
    );
  }
}

class _RowChild extends StatelessWidget {
  final Widget child;
  final BoxConstraints boxConstraints;

  const _RowChild({
    @required this.child,
    @required this.boxConstraints,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: child,
    );
  }
}
