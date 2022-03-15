import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        color: Colors.black,
      ),
      button: TextStyle(
        color: Colors.black,
      ),
      caption: TextStyle(
        color: Colors.black,
      ),
      headline1: TextStyle(
        color: Colors.black,
      ),
      headline2: TextStyle(
        color: Colors.black,
      ),
      headline3: TextStyle(
        color: Colors.black,
      ),
      headline4: TextStyle(
        color: Colors.black,
      ),
      headline5: TextStyle(
        color: Colors.black,
      ),
      headline6: TextStyle(
        color: Colors.black,
      ),
      subtitle1: TextStyle(
        color: Colors.black,
      ),
      subtitle2: TextStyle(
        color: Colors.black,
      ),
      overline: TextStyle(
        color: Colors.black,
      ),
    ),
    buttonColor: Colors.blue,
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.black,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        color: Colors.white,
      ),
      button: TextStyle(
        color: Colors.white,
      ),
      caption: TextStyle(
        color: Colors.white,
      ),
      headline1: TextStyle(
        color: Colors.white,
      ),
      headline2: TextStyle(
        color: Colors.white,
      ),
      headline3: TextStyle(
        color: Colors.white,
      ),
      headline4: TextStyle(
        color: Colors.white,
      ),
      headline5: TextStyle(
        color: Colors.white,
      ),
      headline6: TextStyle(
        color: Colors.white,
      ),
      subtitle1: TextStyle(
        color: Colors.white,
      ),
      subtitle2: TextStyle(
        color: Colors.white,
      ),
      overline: TextStyle(
        color: Colors.white,
      ),
    ),
    buttonColor: Colors.red,
  );
}
