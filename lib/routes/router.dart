import 'package:go_router/go_router.dart';
import 'package:staugustinechsnewapp/routes/consts.dart';
import 'package:staugustinechsnewapp/screens/cafe_menu_screen.dart';
import 'package:staugustinechsnewapp/screens/error_screen.dart';
import 'package:staugustinechsnewapp/screens/home_screen.dart';
import 'package:staugustinechsnewapp/screens/login_screen.dart';
import 'package:staugustinechsnewapp/screens/profile_screen.dart';
import 'package:staugustinechsnewapp/app.dart';
import 'package:staugustinechsnewapp/screens/settings_screen.dart';
import 'package:staugustinechsnewapp/screens/socials_screen.dart';
import 'package:staugustinechsnewapp/screens/song_requests_screen.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';

// Possible routes
enum ENav {
  cafeMenu,
  home,
  login,
  profile,
  settings,
  socials,
  songRequests,
}

/// Get the ENav from a route
ENav getENavFromRoute(String route) {
  switch (route) {
    case cafeMenuRoute:
      return ENav.cafeMenu;
    case homeRoute:
      return ENav.home;
    case loginRoute:
      return ENav.login;
    case profileRoute:
      return ENav.profile;
    case settingsRoute:
      return ENav.settings;
    case socialsRoute:
      return ENav.socials;
    case songRequestsRoute:
      return ENav.songRequests;
    default:
      return ENav.home;
  }
}

/// Get the route from an ENav
String getRouteFromENav(ENav nav) {
  switch (nav) {
    case ENav.cafeMenu:
      return cafeMenuRoute;
    case ENav.home:
      return homeRoute;
    case ENav.login:
      return loginRoute;
    case ENav.profile:
      return profileRoute;
    case ENav.settings:
      return settingsRoute;
    case ENav.socials:
      return socialsRoute;
    case ENav.songRequests:
      return songRequestsRoute;
    default:
      return homeRoute;
  }
}

GoRouter router(AuthBloc authBloc) {
  return GoRouter(
    urlPathStrategy: UrlPathStrategy.path,
    debugLogDiagnostics: true,
    errorBuilder: (context, state) => ErrorScreen(state: state),
    navigatorBuilder: (context, state, child) => App(child: child),
    routes: [
      GoRoute(
        path: emptyRoute,
        redirect: (state) => homeRoute,
      ),
      GoRoute(
        path: cafeMenuRoute,
        builder: (context, state) => const CafeMenuScreen(),
      ),
      GoRoute(
        path: homeRoute,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: loginRoute,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: profileRoute,
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
          path: settingsRoute,
          builder: (context, state) => const SettingsScreen()),
      GoRoute(
          path: socialsRoute,
          builder: (context, state) => const SocialsScreen()),
      GoRoute(
          path: songRequestsRoute,
          builder: (context, state) => const SongRequestsScreen()),
    ],
    // redirect: (state) {
    //   print("bruh: ${state.location}");
    //   final isAuthenticated = authBloc.state.isAuthenticated;
    //   final route = state.location;
    //   if (!isAuthenticated && guardedScreens.contains(route)) {
    //     return loginRoute;
    //   }
    //   return route;
    // },
  );
}
