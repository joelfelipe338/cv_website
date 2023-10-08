import 'package:flutter/material.dart';

class LightTheme {
  static ThemeData themeData = ThemeData(
    scrollbarTheme:  ScrollbarThemeData().copyWith(
      thumbColor: MaterialStateProperty.all(secondaryTheme),
    ),
    fontFamily: fontFamily,
    iconTheme: IconThemeData(
        color: secondaryTheme
    ),
    textTheme: TextTheme(
      displayMedium: TextStyle(
        fontSize: 30.0,
        color: secondaryTheme,
      ),
      displayLarge: TextStyle(
        fontSize: 60.0,
        color: secondaryTheme,
      ),
      displaySmall: TextStyle(
        fontSize: 20.0,
        color: secondaryTheme,
      ),
    ),
  );

  static String fontFamily = 'PatrickHand';
  static Color  primaryTheme = const Color(0xffffee99);
  static Color secondaryTheme = const Color.fromRGBO(18, 18, 18, 1.0);
}

class DarkTheme {
  static ThemeData themeData = ThemeData(
    scrollbarTheme:  ScrollbarThemeData().copyWith(
      thumbColor: MaterialStateProperty.all(secondaryTheme),
    ),
    fontFamily: fontFamily,
    iconTheme: IconThemeData(
      color: secondaryTheme
    ),

    textTheme: TextTheme(
      displayMedium: TextStyle(
        fontSize: 30.0,
        color: secondaryTheme,
      ),
      displayLarge: TextStyle(
        fontSize: 60.0,
        color: secondaryTheme,
      ),
      displaySmall: TextStyle(
        fontSize: 20.0,
        color: secondaryTheme,
      ),
    ),
  );

  static String fontFamily = 'VT323';
  static const primaryTheme = Color.fromRGBO(18, 18, 18, 1.0);
  static Color secondaryTheme = const Color(0xff11c700);
}

