import 'package:flutter/material.dart';

abstract class Section extends StatelessWidget {
  const Section({Key key}) : super(key: key);
  
  String get title;
  GlobalKey get globalKey => GlobalKey();
}
