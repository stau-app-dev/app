import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/screens/cafe_menu_screen.dart';
import 'package:staugustinechsnewapp/screens/home_screen.dart';
import 'package:staugustinechsnewapp/screens/profile_screen.dart';
import 'package:staugustinechsnewapp/screens/socials_screen.dart';
import 'package:staugustinechsnewapp/screens/song_requests_screen.dart';
import 'package:staugustinechsnewapp/widgets/navigation/bottom_nav_bar.dart';
import 'package:staugustinechsnewapp/widgets/reusable/fade_indexed_stack.dart';

class ScreenController extends StatefulWidget {
  const ScreenController({Key? key}) : super(key: key);
  @override
  State<ScreenController> createState() => _ScreenControllerState();
}

class _ScreenControllerState extends State<ScreenController> {
  int currentIndex = 0;
  final screens = [
    const HomeScreen(),
    const CafeMenuScreen(),
    const SocialsScreen(),
    const SongRequestsScreen(),
    const ProfileScreen(),
  ];

  void navigationTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeIndexedStack(
        index: currentIndex,
        children: screens,
        duration: const Duration(milliseconds: 250),
      ),
      bottomNavigationBar: BottomNavBar(navigationTapped: navigationTapped),
    );
  }
}
