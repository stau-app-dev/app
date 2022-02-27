import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class BottomNavBar extends StatefulWidget {
  final void Function(int) navigationTapped;
  const BottomNavBar({Key? key, required this.navigationTapped}) : super(key: key);
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  static const double borderRadius = 16.0;
  
  List<BottomNavigationBarItem> _getItems() {
    const List<Map<String, dynamic>> data = [
      {
        'icon': Icons.home,
        'label': 'Home',
      },
      {
        'icon': Icons.restaurant,
        'label': 'Cafe Menu',
      },
      {
        'icon': Icons.people,
        'label': 'Socials',
      },
      {
        'icon': Icons.music_note,
        'label': 'Song Requests',
      },
      {
        'icon': Icons.person,
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

  void _onItemTapped(int index) {
    setState(() {
      _page = index;
    });
    widget.navigationTapped(index);
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(borderRadius),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: _getItems(),
          currentIndex: _page,
          backgroundColor: Styles.primary,
          selectedItemColor: Styles.secondary,
          unselectedItemColor: Styles.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: _onItemTapped,
        ));
  }
}
