import 'package:flutter/material.dart';
import 'package:homepage/navigation_bar/home_button.dart';
import 'package:homepage/navigation_bar/navigation_bar_item.dart';
import 'package:homepage/widgets/section/section.dart';

class NavigationBarContent extends StatelessWidget {
  final List<Section> sections;
  final bool mobile;

  const NavigationBarContent({
    @required this.sections,
    @required this.mobile,
    Key key,
  })  : assert(sections != null),
        super(key: key);

  Widget get spacing => SizedBox(width: 30);

  Widget _getBarItem(Section section) {
    return NavigationBarItem(
      onTap: () {},
      title: section.title,
    );
  }

  List<Widget> _getChildren(BuildContext context) {
    final List<Widget> children = [];

    for (var section in sections) {
      children.add(_getBarItem(section));
      children.add(spacing);
    }

    return children;
  }

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HomeButton(),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: _getChildren(context),
        ),
      ],
    );
  }
}

//  @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.max,
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         HomeButton(),
//         IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: () {},
//         ),
//       ],
//     );
//   }
