import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';

ThemeData appThemeData = ThemeData(
  appBarTheme: const AppBarTheme(
    color: Styles.primary,
    elevation: 0.0,
    iconTheme: IconThemeData(color: Styles.secondary),
    toolbarTextStyle: TextStyle(
      fontFamily: Styles.fontFamilyNormal,
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: Styles.secondary,
      letterSpacing: 0.15,
    ),
  ),
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(primary: Styles.primary, secondary: Styles.secondary),
  fontFamily: Styles.fontFamilyNormal,
  hintColor: Styles.grey,
  iconTheme: const IconThemeData(color: Styles.primary),
  primaryColor: createMaterialColor(Styles.primary),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Styles.secondary,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      textStyle: const TextStyle(fontFamily: Styles.fontFamilyNormal),
    ),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Styles.secondary,
    selectionHandleColor: Styles.secondary,
    selectionColor: Styles.secondary.withOpacity(0.5),
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 96.0,
        fontWeight: FontWeight.w300,
        color: Styles.primary,
        letterSpacing: -1.5),
    headline2: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 60.0,
        fontWeight: FontWeight.w300,
        color: Styles.primary,
        letterSpacing: -0.5),
    headline3: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 48.0,
        fontWeight: FontWeight.w400,
        color: Styles.primary,
        letterSpacing: 0.0),
    headline4: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 34.0,
        fontWeight: FontWeight.w400,
        color: Styles.primary,
        letterSpacing: 0.25),
    headline5: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
        color: Styles.primary,
        letterSpacing: 0.0),
    headline6: TextStyle(
        fontFamily: Styles.fontFamilyTitles,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Styles.primary,
        letterSpacing: 0.15),
    subtitle1: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: Styles.white,
        letterSpacing: 0.15),
    subtitle2: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        color: Styles.white,
        letterSpacing: 0.1),
    bodyText1: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        color: Styles.primary,
        letterSpacing: 0.5),
    bodyText2: TextStyle(
      fontFamily: Styles.fontFamilyNormal,
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Styles.primary,
      letterSpacing: 0.25,
    ),
    button: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: Styles.primary,
        letterSpacing: 1.25),
    caption: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
        color: Styles.primary,
        letterSpacing: 0.4),
    overline: TextStyle(
        fontFamily: Styles.fontFamilyNormal,
        fontSize: 10.0,
        fontWeight: FontWeight.w400,
        color: Styles.primary,
        letterSpacing: 1.5),
  ),
);

// From: https://medium.com/py-bits/turn-any-color-to-material-color-for-flutter-d8e8e037a837
/// Converts a [color] to a material color.
MaterialColor createMaterialColor(Color color) {
  int r = color.red, g = color.green, b = color.blue;
  return MaterialColor(
    color.value,
    <int, Color>{
      50: Color.fromRGBO(r, g, b, .1),
      100: Color.fromRGBO(r, g, b, .2),
      200: Color.fromRGBO(r, g, b, .3),
      300: Color.fromRGBO(r, g, b, .4),
      400: Color.fromRGBO(r, g, b, .5),
      500: Color.fromRGBO(r, g, b, .6),
      600: Color.fromRGBO(r, g, b, .7),
      700: Color.fromRGBO(r, g, b, .8),
      800: Color.fromRGBO(r, g, b, .9),
      900: Color.fromRGBO(r, g, b, 1),
    },
  );
}
