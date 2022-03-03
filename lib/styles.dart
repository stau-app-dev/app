import 'package:flutter/material.dart';

/// This class holds all the styling for the app.
class Styles {
  static const double appBarHeight = 72.0;
  static const Color primary = Color(0xff8D1230);
  static const Color secondary = Color(0xffD8AE1A);

  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color transparent = Color(0x00000000);
  static const Color grey = Color(0xffC4C4C4);
  static const Color blur = Color.fromRGBO(0, 0, 0, 0.5);

  /// Default font size for the app. Defaults to 14.0.
  static const double fontSizeNormal = 14.0;

  /// Default font for titles. Defaults to Raleway.
  static const String fontFamilyTitles = 'Raleway';

  /// Default font for text. Defaults to Source Sans Pro.
  static const String fontFamilyRegular = 'SourceSansPro';

  static const headerMainText = TextStyle(
      fontSize: 24,
      fontFamily: fontFamilyTitles,
      fontWeight: FontWeight.w800,
      color: Colors.white);
  static const headerSubText = TextStyle(
      fontSize: fontSizeNormal,
      fontFamily: fontFamilyRegular,
      fontWeight: FontWeight.normal,
      color: Colors.white);
  static final headerBoxShadow = [
    const BoxShadow(
      color: Styles.primary,
      spreadRadius: 0,
      blurRadius: 5,
      offset: Offset.zero,
    )
  ];

  static const regularMainText = TextStyle(
      fontSize: 18,
      fontFamily: fontFamilyTitles,
      fontWeight: FontWeight.bold,
      color: primary);
  static const regularSubText = TextStyle(
      fontSize: fontSizeNormal,
      fontFamily: fontFamilyRegular,
      fontWeight: FontWeight.bold,
      color: primary);
  static const regularText = TextStyle(
      fontSize: fontSizeNormal,
      fontFamily: fontFamilyRegular,
      fontWeight: FontWeight.normal,
      color: primary);
  static final regularBoxShadow = [
    const BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.3),
      spreadRadius: 0,
      blurRadius: 10,
      offset: Offset(0, 2),
    )
  ];

  /// Main border radius. Default is all corners rounded to 16.0
  static const mainBorderRadius = BorderRadius.all(Radius.circular(16.0));

  /// Main outside padding value of 24.0
  static const double mainOutsidePaddingValue = 24.0;

  /// Main outside padding for all screens. Default is horizontal sides 24.0
  static const EdgeInsetsGeometry mainOutsidePadding = EdgeInsets.only(
      left: mainOutsidePaddingValue, right: mainOutsidePaddingValue);

  /// Main vertical padding. Default is 16.0
  static const double mainVerticalPadding = 16.0;

  /// Main spacing between widgets. Default is 20.0
  static const double mainSpacing = 20.0;

  /// Main padding inside widgets. Default is 20.0
  static const double mainInsidePadding = 20.0;

  static const double featuredCafeItemHeight = 200.0;
  static const double cafeItemHeight = 150.0;
}

/// Use this method to determine if the app should render the UI for a tablet
bool useTabletLayout(BuildContext context) {
  return MediaQuery.of(context).size.width > 600;
}
