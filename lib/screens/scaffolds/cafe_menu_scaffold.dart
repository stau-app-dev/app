import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/screens/main/cafe_menu_screen.dart';

class CafeMenuScaffold extends StatefulWidget {
  const CafeMenuScaffold({Key? key}) : super(key: key);
  @override
  State<CafeMenuScaffold> createState() => _CafeMenuScaffoldState();
}

class _CafeMenuScaffoldState extends State<CafeMenuScaffold> {
  List<Map<String, String>> sampleTodaysSpecials = [
    {
      'food': 'Caramel Macchiato',
      'price': '2.00',
      'image': 'assets/images/cat.jpg',
    },
    {
      'food': 'Mocha',
      'price': '3.00',
      'image': 'assets/images/cat.jpg',
    },
    {
      'food': 'Pumpkin Spice Latte with Vanilla Cream',
      'price': '4.00',
      'image': 'assets/images/cat.jpg',
    },
    {
      'food': 'Dope',
      'price': '5.00',
      'image': 'assets/images/cat.jpg',
    },
    {
      'food': 'LOL WHAT A LONG NAME',
      'price': '6.00',
      'image': 'assets/images/cat.jpg',
    },
  ];

  List<Map<String, String>> sampleMenuItems = [
    {
      'food': 'Caramel Macchiato',
      'price': '2.00',
      'image': 'assets/images/cat.jpg',
    },
    {
      'food': 'Mocha',
      'price': '3.00',
      'image': 'assets/images/cat.jpg',
    },
    {
      'food': 'Pumpkin Spice Latte with Vanilla Cream',
      'price': '4.00',
      'image': 'assets/images/cat.jpg',
    },
    {
      'food': 'Dope',
      'price': '5.00',
      'image': 'assets/images/cat.jpg',
    },
    {
      'food': 'LOL WHAT A LONG NAME',
      'price': '6.00',
      'image': 'assets/images/cat.jpg',
    },
    {
      'food': 'get a life',
      'price': '6.00',
      'image': 'assets/images/cat.jpg',
    },
    {
      'food': 'the end is never the end',
      'price': '10.00',
      'image': 'assets/images/cat.jpg',
    },
    {
      'food': 'Cookies',
      'price': '2.00',
      'image': 'assets/images/cat.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CafeMenuScreen(
      todaysSpecials: sampleTodaysSpecials,
      menuItems: sampleMenuItems,
    ));
  }
}
