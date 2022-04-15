import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/injection.dart';
import 'package:staugustinechsnewapp/screens/screen_controller.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';
import 'package:staugustinechsnewapp/utilities/cafe_menu/cafe_menu_bloc.dart';
import 'package:staugustinechsnewapp/utilities/home/home_bloc.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/utilities/profile/profile_bloc.dart';
import 'package:staugustinechsnewapp/utilities/socials/socials_bloc.dart';
import 'package:staugustinechsnewapp/utilities/songs/song_bloc.dart';

/// Control the app's environment. Uncomment the dev line if you are running the backend locally.
const env = kReleaseMode ? Environment.prod : Environment.test;
// const env = Environment.dev;

void main() async {
  if (kDebugMode) {
    print('[ENV] Running in Environment: ' + env);
  }

  // Initialize the app
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(env);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // iOS will not automatically show the notification bar when the app loads.
  // To show the notification bar:
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);

  // Wrap the app in a MultiBlocProvider so that the Blocs can be accessed from any part of the app
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => getIt<AuthBloc>()),
      BlocProvider(create: (context) => getIt<CafeMenuBloc>()),
      BlocProvider(create: (context) => getIt<HomeBloc>()),
      BlocProvider(create: (context) => getIt<NavBloc>()),
      BlocProvider(create: (context) => getIt<ProfileBloc>()),
      BlocProvider(create: (context) => getIt<SocialsBloc>()),
      BlocProvider(create: (context) => getIt<SongBloc>()),
    ],
    child: const AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark, child: MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'St Augustine CHS',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: createMaterialColor(Styles.primary),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: createMaterialColor(Styles.secondary)),
        fontFamily: Styles.fontFamilyNormal,
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
              fontWeight: FontWeight.w400,
              color: Styles.primary,
              letterSpacing: 0.0),
          headline6: TextStyle(
              fontFamily: Styles.fontFamilyNormal,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Styles.primary,
              letterSpacing: 0.15),
          subtitle1: TextStyle(
              fontFamily: Styles.fontFamilyNormal,
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: Styles.primary,
              letterSpacing: 0.15),
          subtitle2: TextStyle(
              fontFamily: Styles.fontFamilyNormal,
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: Styles.primary,
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
