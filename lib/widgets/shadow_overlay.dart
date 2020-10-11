import 'package:flutter/material.dart';

class ShadowOverlay extends BoxShadow {
  final double shadowOpacity;
  final double spreadRadius;
  final double blurRadius;
  final Offset offset;

  ShadowOverlay({
    this.shadowOpacity = 0.5,
    this.spreadRadius = 5,
    this.blurRadius = 10,
    this.offset = const Offset(0, 3),
  });

  @override
  Color get color => Colors.grey.withOpacity(shadowOpacity);
}
