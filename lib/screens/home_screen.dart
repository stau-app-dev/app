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
  List<Widget> buildChildren() {
    return <Widget>[
      const SizedBox(height: Styles.mainVerticalPadding),
      const WelcomeBanner(),
      const SizedBox(height: Styles.mainSpacing),
      const AnnouncementsBoard(),
      const SizedBox(height: Styles.mainSpacing),
      const FeaturedCafeItems(),
      const SizedBox(height: Styles.mainSpacing),
      const SpiritMeter(),
      const SizedBox(height: Styles.mainSpacing),
      const ChaplaincyCorner(),
      const SizedBox(height: Styles.mainVerticalPadding),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: Styles.mainOutsidePadding,
        children: buildChildren(),
      ),
    );
  }
}
