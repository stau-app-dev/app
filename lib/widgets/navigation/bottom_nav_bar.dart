import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:staugustinechsnewapp/routes/consts.dart';
import 'package:staugustinechsnewapp/routes/router.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late NavBloc navBloc;
  static const double borderRadius = 16.0;

  /// To change bottom navbar tab order, rearrange this list
  final navbarRoutesOrder = [
    homeRoute,
    cafeMenuRoute,
    socialsRoute,
    songRequestsRoute,
    profileRoute,
  ];

  @override
  void initState() {
    navBloc = BlocProvider.of<NavBloc>(context);
    super.initState();
  }

  void onItemTapped(int index) {
    navBloc.add(NavEvent.changeScreen(
        screen: getENavFromRoute(navbarRoutesOrder[index]), context: context));
  }

  IconData getIconDataFromRoute(String route) {
    switch (route) {
      case homeRoute:
        return Icons.home_rounded;
      case cafeMenuRoute:
        return Icons.restaurant_rounded;
      case profileRoute:
        return Icons.person_rounded;
      case socialsRoute:
        return Icons.people_rounded;
      case songRequestsRoute:
        return Icons.music_note_rounded;
      default:
        return Icons.home_rounded;
    }
  }

  int getIndex() {
    final url = GoRouter.of(context).location;
    for (int i = 0; i < navbarRoutesOrder.length; i++) {
      if (url == navbarRoutesOrder[i]) {
        return i;
      }
    }
    return 0;
  }

  List<BottomNavigationBarItem> buildItems() {
    List<BottomNavigationBarItem> itemsList = [];
    for (var route in navbarRoutesOrder) {
      itemsList.add(BottomNavigationBarItem(
        icon: Icon(getIconDataFromRoute(route)),
        label: route,
      ));
    }
    return itemsList;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBloc, NavState>(builder: (context, state) {
      double height = state.navbarVisible ? Styles.appBarHeight : 0.0;
      if (useTabletLayout(context) && state.navbarVisible) {
        height += 4.0;
      }
      return SizedBox(
          height: height,
          child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(borderRadius),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: buildItems(),
                currentIndex: getIndex(),
                backgroundColor: Styles.primary,
                selectedItemColor: Styles.secondary,
                unselectedItemColor: Styles.white,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                onTap: onItemTapped,
              )));
    });
  }
}
