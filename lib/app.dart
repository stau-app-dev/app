import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:staugustinechsnewapp/routes/consts.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/widgets/navigation/bottom_nav_bar.dart';

/// The list of routes that are hidden behind auth
final guardedScreens = [
  profileRoute,
  socialsRoute,
  songRequestsRoute,
];

/// {@template app}
/// Main application class.
/// {@endtemplate}
class App extends StatefulWidget {
  final Widget child;

  /// {@macro app}
  const App({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late AuthBloc authBloc;
  late NavBloc navBloc;

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
        // if (!authState.isAuthenticated &&
        //     guardedScreens.contains(GoRouter.of(context).location)) {
        //   navBloc.add(const NavEvent.setNavbarVisible(isVisible: false));
        //   // GoRouter.of(context).go(loginRoute);
        //   return Container(
        //     color: Styles.white,
        //   );
        // } else {
        //   return Scaffold(
        //     body: widget.child,
        //     bottomNavigationBar: const BottomNavBar(),
        //   );
        // }
        return Scaffold(
          body: widget.child,
          bottomNavigationBar: const BottomNavBar(),
        );
      });
    });
  }
}
