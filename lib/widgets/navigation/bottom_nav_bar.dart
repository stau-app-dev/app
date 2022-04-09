import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/utilities/navigation/enav_index_conversion.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';

// NOTE: To change tab order, see eNavToIndex(ENav eNav)

Map<ENav, Map<String, Object>> _bottomNavbarItems = {
  ENav.cafeMenu: {
    'icon': Icons.restaurant_rounded,
    'label': 'Cafe Menu',
  },
  ENav.home: {
    'icon': Icons.home_rounded,
    'label': 'Home',
  },
  ENav.profile: {
    'icon': Icons.person_rounded,
    'label': 'Profile',
  },
  ENav.socials: {
    'icon': Icons.people_rounded,
    'label': 'Socials',
  },
  ENav.songRequests: {
    'icon': Icons.music_note_rounded,
    'label': 'Song Requests',
  },
};

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late NavBloc navBloc;
  static const double borderRadius = 16.0;

  @override
  void initState() {
    navBloc = BlocProvider.of<NavBloc>(context);
    super.initState();
  }

  List<BottomNavigationBarItem> buildItems() {
    List<BottomNavigationBarItem> itemsList = [];
    for (int i = 0; i < _bottomNavbarItems.length; i++) {
      ENav nav = indexToENav(i);
      itemsList.add(BottomNavigationBarItem(
        icon: Icon(_bottomNavbarItems[nav]!['icon'] as IconData),
        label: _bottomNavbarItems[nav]!['label'] as String,
      ));
    }
    return itemsList;
  }

  void onItemTapped(int index) {
    navBloc.add(NavEvent.changeScreen(screen: indexToENav(index)));
  }

  /// This is to calculate which navbar item to highlight.
  /// It should never be greater than 4
  int getIndex(ENav nav) {
    if (nav == ENav.settings) {
      return eNavToIndex(ENav.profile);
    } else if (nav == ENav.joinClubs) {
      return eNavToIndex(ENav.socials);
    } else if (eNavToIndex(nav) > 4) {
      return eNavToIndex(ENav.home);
    } else {
      return eNavToIndex(nav);
    }
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
                currentIndex: getIndex(state.currentScreen),
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
