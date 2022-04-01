import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/screens/main/cafe_menu_screen.dart';
import 'package:staugustinechsnewapp/screens/main/home_screen.dart';
import 'package:staugustinechsnewapp/screens/main/login_screen.dart';
import 'package:staugustinechsnewapp/screens/main/profile_screen.dart';
import 'package:staugustinechsnewapp/screens/main/settings_screen.dart';
import 'package:staugustinechsnewapp/screens/main/socials_screen.dart';
import 'package:staugustinechsnewapp/screens/main/song_requests_screen.dart';
import 'package:staugustinechsnewapp/screens/scaffolds/home_screen_scaffold.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';
import 'package:staugustinechsnewapp/utilities/navigation/enav_index_conversion.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/widgets/navigation/bottom_nav_bar.dart';
import 'package:staugustinechsnewapp/widgets/reusable/fade_indexed_stack.dart';

Map<ENav, Widget> _screens = {
  ENav.cafeMenu: const CafeMenuScreen(),
  ENav.home: const HomeScaffold(),
  ENav.login: const LoginScreen(),
  ENav.profile: const ProfileScreen(),
  ENav.socials: const SocialsScreen(),
  ENav.songRequests: const SongRequestsScreen(),
  ENav.settings: const SettingsScreen(),
};

List<Widget> _generateScreensStack() {
  List<Widget> screensStack = [];
  for (int i = 0; i < _screens.length; i++) {
    screensStack.add(_screens[indexToENav(i)]!);
  }
  return screensStack;
}

/// {@template screen_controller}
/// The main screen controller for the app.
/// Built using a [FadeIndexedStack] to ensure smooth transitions.
/// {@endtemplate}
class ScreenController extends StatefulWidget {
  /// {@macro screen_controller}
  const ScreenController({Key? key}) : super(key: key);
  @override
  State<ScreenController> createState() => _ScreenControllerState();
}

class _ScreenControllerState extends State<ScreenController> {
  late AuthBloc authBloc;
  late NavBloc navBloc;

  List<ENav> guardedScreens = [
    ENav.profile,
    ENav.socials,
    ENav.songRequests,
  ];

  @override
  void initState() {
    authBloc = BlocProvider.of<AuthBloc>(context);
    navBloc = BlocProvider.of<NavBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBloc, NavState>(builder: (context, navState) {
      return BlocBuilder<AuthBloc, AuthState>(builder: (context, authState) {
        if (!authState.isAuthenticated &&
            guardedScreens.contains(navState.currentScreen)) {
          navBloc.add(const NavEvent.setNavbarVisible(isVisible: false));
          navBloc.add(const NavEvent.changeScreen(screen: ENav.login));
          return Container(
            color: Styles.white,
          );
        } else {
          return Scaffold(
            body: FadeIndexedStack(
              index: eNavToIndex(navState.currentScreen),
              children: _generateScreensStack(),
              duration: const Duration(milliseconds: 250),
            ),
            bottomNavigationBar: const BottomNavBar(),
          );
        }
      });
    });
  }
}
