import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    textTheme:const TextTheme(
      bodyText1: TextStyle(
        color: Colors.grey,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      bodyText2: TextStyle(
         color: Colors.grey,
         fontWeight: FontWeight.w500,
        fontSize: 16,
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
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.black,
      textTheme: ButtonTextTheme.primary,
    ),
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.black,
    textTheme: const TextTheme(
        bodyText1: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      bodyText2: TextStyle(
         color: Colors.white,
         fontWeight: FontWeight.w500,
        fontSize: 16,
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
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
