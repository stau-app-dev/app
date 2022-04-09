import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/screens/scaffolds/cafe_menu/cafe_menu_scaffold.dart';
import 'package:staugustinechsnewapp/screens/scaffolds/home/home_scaffold.dart';
import 'package:staugustinechsnewapp/screens/scaffolds/login_scaffold.dart';
import 'package:staugustinechsnewapp/screens/scaffolds/profile/profile_scaffold.dart';
import 'package:staugustinechsnewapp/screens/scaffolds/profile/settings_scaffold.dart';
import 'package:staugustinechsnewapp/screens/scaffolds/socials/join_clubs_scaffold.dart';
import 'package:staugustinechsnewapp/screens/scaffolds/socials/socials_scaffold.dart';
import 'package:staugustinechsnewapp/screens/scaffolds/song_requests/song_request_scaffold.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';
import 'package:staugustinechsnewapp/utilities/navigation/enav_index_conversion.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/widgets/navigation/bottom_nav_bar.dart';
import 'package:staugustinechsnewapp/widgets/reusable/fade_indexed_stack.dart';

Map<ENav, Widget> _screens = {
  ENav.cafeMenu: const CafeMenuScaffold(),
  ENav.home: const HomeScaffold(),
  ENav.login: const LoginScaffold(),
  ENav.joinClubs: const JoinClubsScaffold(),
  ENav.profile: const ProfileScaffold(),
  ENav.socials: const SocialsScaffold(),
  ENav.songRequests: const SongRequestsScaffold(),
  ENav.settings: const SettingsScaffold(),
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
