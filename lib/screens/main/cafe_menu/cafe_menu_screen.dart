import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/cafe_menu/cafe_menu_item/cafe_menu_item.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/cafe_menu/cafe_items.dart';
import 'package:staugustinechsnewapp/widgets/reusable/screen_header.dart';

class CafeMenuScreen extends StatelessWidget {
  final List<CafeMenuItem> todaysSpecials;
  final List<CafeMenuItem> menuItems;
  final Function() onRefresh;

  const CafeMenuScreen(
      {Key? key,
      required this.todaysSpecials,
      required this.menuItems,
      required this.onRefresh})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      listView: true,
      onRefresh: onRefresh,
      children: [
        const ScreenHeader(headerText: 'Cafeteria Menu'),
        const SizedBox(height: Styles.mainSpacing),
        CafeItems(title: "Today's Specials", items: todaysSpecials),
        const SizedBox(height: Styles.mainSpacing),
        CafeItems(title: 'Menu', items: menuItems),
      ],
    );
  }
}
