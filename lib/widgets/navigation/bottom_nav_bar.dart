import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class BottomNavBar extends StatefulWidget {
  final void Function(int) navigationTapped;
  const BottomNavBar({Key? key, required this.navigationTapped})
      : super(key: key);
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int page = 0;
  static const double borderRadius = 16.0;

  List<BottomNavigationBarItem> buildItems() {
    const List<Map<String, dynamic>> data = [
      {
        'icon': Icons.home_rounded,
        'label': 'Home',
      },
      {
        'icon': Icons.restaurant_rounded,
        'label': 'Cafe Menu',
      },
      {
        'icon': Icons.people_rounded,
        'label': 'Socials',
      },
      {
        'icon': Icons.music_note_rounded,
        'label': 'Song Requests',
      },
      {
        'icon': Icons.person_rounded,
        'label': 'Profile',
      },
    ];
    List<BottomNavigationBarItem> itemsList = [];

    for (int i = 0; i < data.length; i++) {
      itemsList.add(BottomNavigationBarItem(
        icon: Icon(data[i]['icon']),
        label: data[i]['label'],
      ));
    }

    return itemsList;
  }

  void onItemTapped(int index) {
    setState(() {
      page = index;
    });
    widget.navigationTapped(index);
  }

  @override
  Widget build(BuildContext context) {
    double height = Styles.appBarHeight;
    if (useTabletLayout(context)) {
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
              currentIndex: page,
              backgroundColor: Styles.primary,
              selectedItemColor: Styles.secondary,
              unselectedItemColor: Styles.white,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: onItemTapped,
            )));
  }
}
