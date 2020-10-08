import 'package:flutter/material.dart';
import 'package:homepage/home/sections/welcome/welcome_text.dart';
import 'package:homepage/icons/icon_row.dart';
import 'package:homepage/home/sections/welcome/profile_picture.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Welcome extends StatelessWidget {
  static const padding = EdgeInsets.symmetric(vertical: 15);

  const Welcome({Key key}) : super(key: key);

  List<Widget> _getRowChildren(bool isTablet) {
    final List<Widget> children = [
      Expanded(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            print(constraints.maxHeight);
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: constraints.maxWidth / 10,
              ),
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(maxHeight: constraints.maxHeight / 1.5),
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
            );
          },
        ),
      ),
    ];

    if (isTablet) {
      children.add(
        Expanded(
          child: ProfilePicture(
            maxHeight: 600,
          ),
        ),
      );
    }

    return children;
  }

  Widget _getRow(bool isTablet) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _getRowChildren(isTablet),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: ScreenTypeLayout(
        tablet: _getRow(true),
        mobile: _getRow(false),
      ),
    );
  }
}
