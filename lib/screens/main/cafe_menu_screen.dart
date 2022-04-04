import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/cafe_menu/cafe_items.dart';
import 'package:staugustinechsnewapp/widgets/reusable/screen_header.dart';

class CafeMenuScreen extends StatefulWidget {
  final List<Map<String, String>>? todaysSpecials;
  final List<Map<String, String>>? menuItems;

  const CafeMenuScreen({Key? key, this.todaysSpecials, this.menuItems})
      : super(key: key);

  @override
  State<CafeMenuScreen> createState() => _CafeMenuScreenState();
}

class _CafeMenuScreenState extends State<CafeMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      listView: true,
      children: [
        const ScreenHeader(headerText: 'Cafeteria Menu'),
        const SizedBox(height: Styles.mainSpacing),
        CafeMenuItems(
            title: "Today's Specials", items: widget.todaysSpecials ?? []),
        const SizedBox(height: Styles.mainSpacing),
        CafeMenuItems(title: 'Menu', items: widget.menuItems ?? []),
      ],
    );
  }
}
