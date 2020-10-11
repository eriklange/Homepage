import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static get headline1 => TextStyle(
        fontSize: 50,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      );

  static get headline2 => TextStyle(
        fontSize: 40,
        color: Colors.black,
      );

  static get headline3 => TextStyle(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      );

  static get headline4 => TextStyle(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      );

  static get subtitle1 => TextStyle(
        fontSize: 25,
        color: Colors.black,
      );

  static get bodyText1 => TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      );

  static get bodyText2 => TextStyle(
        fontSize: 25,
        color: Colors.black,
      );

  static ThemeData theme = ThemeData(
    fontFamily: GoogleFonts.openSansCondensed().fontFamily,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      textTheme: TextTheme(
        button: TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    ),
    textTheme: TextTheme(
      headline1: headline1,
      headline2: headline2,
      headline3: headline3,
      headline4: headline4,
      subtitle1: subtitle1,
      bodyText1: bodyText1,
      bodyText2: bodyText2,
    ),
  );
}
