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
    List<Map<String, String>> sampleAnnouncements = [
      {
        'title': 'Announcement 1',
        'content': 'Nice',
      },
      {
        'title': 'St. Augustine CHS App Dev Team',
        'content': 'New App coming soon, check in for more updates',
      },
      {
        'title': 'Our Roots Club',
        'content':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'title': 'Wow super long club name and or announcement title',
        'content':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ];

    List<Map<String, String>> sampleVerses = [
      {
        'title': 'Verse of The Day',
        'content':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ];

    Map<int, double> sampleSpiritMeterData = {
      9: 40.0,
      10: 53.0,
      11: 66.0,
      12: 100.0,
    };

    return SafeArea(
      child: ListView(
        padding: Styles.mainOutsidePadding,
        children: <Widget>[
          const SizedBox(height: Styles.mainVerticalPadding),
          const WelcomeBanner(),
          const SizedBox(height: Styles.mainSpacing),
          AnnouncementsBoard(
            announcements: sampleAnnouncements,
          ),
          const SizedBox(height: Styles.mainSpacing),
          const FeaturedCafeItems(),
          const SizedBox(height: Styles.mainSpacing),
          SpiritMeter(
            spiritMeterData: sampleSpiritMeterData,
          ),
          const SizedBox(height: Styles.mainSpacing),
          ChaplaincyCorner(verses: sampleVerses),
          const SizedBox(height: Styles.mainVerticalPadding),
        ],
      ),
    );
  }
}
