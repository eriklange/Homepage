import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:homepage/routes/home/home.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.of(context).pushNamed(Home.route),
      icon: Icon(Feather.home),
    );
  }
}
