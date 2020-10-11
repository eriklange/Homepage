import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
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
      headline1: TextStyle(
        fontSize: 50,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      headline2: TextStyle(
        fontSize: 40,
        color: Colors.black,
      ),
      headline3: TextStyle(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      subtitle1: TextStyle(
        fontSize: 25,
        color: Colors.black,
      ),
      bodyText1: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        fontSize: 25,
        color: Colors.black,
      ),
    ),
  );
}
