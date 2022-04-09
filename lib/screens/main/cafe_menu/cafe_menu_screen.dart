import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/cafe_menu/cafe_menu_item/cafe_menu_item.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/cafe_menu/cafe_items.dart';
import 'package:staugustinechsnewapp/widgets/reusable/screen_header.dart';

class CafeMenuScreen extends StatefulWidget {
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
  State<CafeMenuScreen> createState() => _CafeMenuScreenState();
}

class _CafeMenuScreenState extends State<CafeMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      listView: true,
      onRefresh: widget.onRefresh,
      children: [
        const ScreenHeader(headerText: 'Cafeteria Menu'),
        const SizedBox(height: Styles.mainSpacing),
        CafeMenuItems(title: "Today's Specials", items: widget.todaysSpecials),
        const SizedBox(height: Styles.mainSpacing),
        CafeMenuItems(title: 'Menu', items: widget.menuItems),
      ],
    );
  }
}
