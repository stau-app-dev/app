import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';

/// Converts an ENav to an index.
/// The tab order of the bottom nav bar is controlled here.
int eNavToIndex(ENav nav) {
  switch (nav) {
    case ENav.home:
      return 0;
    case ENav.cafeMenu:
      return 1;
    case ENav.socials:
      return 2;
    case ENav.songRequests:
      return 3;
    case ENav.profile:
      return 4;
    case ENav.login:
      return 5;
    case ENav.settings:
      return 6;
    default:
      return 0;
  }
}

/// Converts an index to an ENav.
ENav indexToENav(int index) {
  switch (index) {
    case 0:
      return ENav.home;
    case 1:
      return ENav.cafeMenu;
    case 2:
      return ENav.socials;
    case 3:
      return ENav.songRequests;
    case 4:
      return ENav.profile;
    case 5:
      return ENav.login;
    case 6:
      return ENav.settings;
    default:
      return ENav.home;
  }
}
