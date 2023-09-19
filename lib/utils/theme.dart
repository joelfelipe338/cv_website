import 'package:flutter/material.dart';

class LightTheme {
  static ThemeData themeData = ThemeData(
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
  static Color primaryTheme = const Color(0xffffee99);
  static Color secondaryTheme = const Color.fromRGBO(18, 18, 18, 1.0);
}

class DarkTheme {


  static ThemeData themeData = ThemeData(
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

/*ThemeData testTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: primaryColor,
  scaffoldBackgroundColor: secondaryColor,
  fontFamily: 'Poppins',
  iconTheme: const IconThemeData(color: iconPrimary),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: primaryColor,
    selectionColor: textCursor,
    selectionHandleColor: textPrimary,
  ),
  tooltipTheme: const TooltipThemeData(
    decoration: BoxDecoration(
      color: tooltip,
      border: Border(
        top: BorderSide(color: textGreyDark, width: 1.0),
        left: BorderSide(color: textGreyDark, width: 1.0),
        right: BorderSide(color: textGreyDark, width: 1.0),
        bottom: BorderSide(color: textGreyDark, width: 1.0),
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    textStyle: TextStyle(color: textWhite),
  ),
  snackBarTheme: const SnackBarThemeData(
    backgroundColor: primaryColor,
    contentTextStyle: TextStyle(color: textWhite),
    actionTextColor: textWhite,
  ),
  textTheme: const TextTheme(
    displayMedium: TextStyle(
      fontSize: 54.0,
      fontWeight: FontWeight.w700,
      color: textWhite,
    ),
    displaySmall: TextStyle(
        fontSize: 42.0,
        fontWeight: FontWeight.w700,
        color: textWhite),
    headlineSmall: TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.w700,
        color: textPrimary),
    titleLarge: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
        color: textGreyDark),
    titleMedium: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        color: textWhite),
    titleSmall: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        color: textGreyLight),
    labelLarge: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        color: textGreyDark),
    labelMedium: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
        color: textWhite),
  ),
  colorScheme: const ColorScheme.dark().copyWith(background: backgroundBlack),
);*/