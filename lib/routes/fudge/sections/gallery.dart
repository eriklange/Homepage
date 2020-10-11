import 'package:flutter/material.dart';
import 'package:homepage/widgets/section/section.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Gallery extends Section {
  final List<Image> images;

  const Gallery({
    @required this.images,
    Key key,
  }) : super(title: "Gallery", key: key);

  Widget _getGrid(int crossAxisCount) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: crossAxisCount,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      childAspectRatio: 2048 / 2732,
      children: images,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _getGrid(1),
      desktop: _getGrid(2),
    );
  }
}
