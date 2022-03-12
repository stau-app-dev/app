import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/screens/cafe_menu_screen.dart';
import 'package:staugustinechsnewapp/screens/home_screen.dart';
import 'package:staugustinechsnewapp/screens/profile_screen.dart';
import 'package:staugustinechsnewapp/screens/socials_screen.dart';
import 'package:staugustinechsnewapp/screens/song_requests_screen.dart';
import 'package:staugustinechsnewapp/utilities/navigation/enav_index_conversion.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/widgets/navigation/bottom_nav_bar.dart';
import 'package:staugustinechsnewapp/widgets/reusable/fade_indexed_stack.dart';

Map<ENav, Widget> _screens = {
  ENav.cafeMenu: const CafeMenuScreen(),
  ENav.home: const HomeScreen(),
  ENav.profile: const ProfileScreen(),
  ENav.socials: const SocialsScreen(),
  ENav.songRequests: const SongRequestsScreen(),
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
  @override
  void initState() {
    BlocProvider.of<NavBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBloc, NavState>(builder: (context, state) {
      return Scaffold(
        body: FadeIndexedStack(
          index: eNavToIndex(state.currentScreen),
          children: _generateScreensStack(),
          duration: const Duration(milliseconds: 250),
        ),
        bottomNavigationBar: const BottomNavBar(),
      );
    });
  }
}
