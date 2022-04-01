import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/cafe_menu/cafe_items.dart';
import 'package:staugustinechsnewapp/widgets/reusable/screen_header.dart';

class CafeMenuScreen extends StatefulWidget {
  const CafeMenuScreen({Key? key}) : super(key: key);
  @override
  State<CafeMenuScreen> createState() => _CafeMenuScreenState();
}

class _CafeMenuScreenState extends State<CafeMenuScreen> {
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
      child: ListView(
        padding: Styles.mainOutsidePadding,
        children: <Widget>[
          const SizedBox(height: Styles.mainVerticalPadding),
          const ScreenHeader(headerText: 'Cafeteria Menu'),
          const SizedBox(height: Styles.mainSpacing),
          CafeItems(title: "Today's Specials", items: sampleTodaysSpecials),
          const SizedBox(height: Styles.mainSpacing),
          CafeItems(title: 'Menu', items: sampleMenuItems),
          const SizedBox(height: Styles.mainVerticalPadding),
        ],
      ),
    );
  }
}
