import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/home/announcements_board.dart';
import 'package:staugustinechsnewapp/widgets/home/chaplaincy_corner.dart';
import 'package:staugustinechsnewapp/widgets/home/featured_cafe_items.dart';
import 'package:staugustinechsnewapp/widgets/home/spirit_meter.dart';
import 'package:staugustinechsnewapp/widgets/home/welcome_banner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: Styles.mainOutsidePadding,
        children: const <Widget>[
          SizedBox(height: Styles.mainVerticalPadding),
          WelcomeBanner(),
          SizedBox(height: Styles.mainSpacing),
          AnnouncementsBoard(),
          SizedBox(height: Styles.mainSpacing),
          FeaturedCafeItems(),
          SizedBox(height: Styles.mainSpacing),
          SpiritMeter(),
          SizedBox(height: Styles.mainSpacing),
          ChaplaincyCorner(),
          SizedBox(height: Styles.mainVerticalPadding),
        ],
      ),
    );
  }
}
