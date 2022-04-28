import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';

/// Handles Android back button presses.
Future<bool> onBackPressed(BuildContext context, NavBloc navBloc) async {
  NavState navState = navBloc.state;
  switch (navState.currentScreen) {
    case ENav.home:
      return true;
    case ENav.login:
      navBloc.add(const NavEvent.setNavbarVisible(isVisible: true));
      navBloc.add(const NavEvent.changeScreen(screen: ENav.home));
      return false;
    case ENav.cafeMenu:
    case ENav.profile:
    case ENav.socials:
    case ENav.songRequests:
      navBloc.add(const NavEvent.changeScreen(screen: ENav.home));
      return false;
    case ENav.club:
    case ENav.joinClubs:
      navBloc.add(const NavEvent.changeScreen(screen: ENav.socials));
      return false;
    case ENav.settings:
      navBloc.add(const NavEvent.changeScreen(screen: ENav.profile));
      return false;
    default:
      return false;
  }
}
