import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/navigation/screen_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);

  // Set status bar text colour to dark for both iOS and Android  (Note: It appears to be opposite for android)
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark, // Only honoured in Android
      statusBarBrightness: Brightness.light // Only honoured in iOS
      ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "St Augustine CHS",
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: createMaterialColor(Styles.primary),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: createMaterialColor(Styles.secondary)),
        fontFamily: Styles.fontFamilyRegular,
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontFamily: Styles.fontFamilyRegular,
              fontSize: 36.0,
              fontWeight: FontWeight.w500,
              color: Styles.primary),
          headline2: TextStyle(
              fontFamily: Styles.fontFamilyRegular,
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
              color: Styles.primary),
          headline3: TextStyle(
              fontFamily: Styles.fontFamilyRegular,
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
              color: Styles.primary),
          headline4: TextStyle(
              fontFamily: Styles.fontFamilyRegular,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Styles.primary),
          headline5: TextStyle(
              fontFamily: Styles.fontFamilyRegular,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              color: Styles.primary),
          headline6: TextStyle(
              fontFamily: Styles.fontFamilyRegular,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color: Styles.primary),
          subtitle1: TextStyle(
              fontFamily: Styles.fontFamilyRegular,
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: Styles.primary),
          subtitle2: TextStyle(
              fontFamily: Styles.fontFamilyRegular,
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: Styles.primary),
          bodyText1: TextStyle(
              fontFamily: Styles.fontFamilyRegular,
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: Styles.primary),
          bodyText2: TextStyle(
              fontFamily: Styles.fontFamilyRegular,
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Styles.primary),
        ),
      ),
      home: const ScreenController(),
    );
  }
}

// From: https://medium.com/py-bits/turn-any-color-to-material-color-for-flutter-d8e8e037a837
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
