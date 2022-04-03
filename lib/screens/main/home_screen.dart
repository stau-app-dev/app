import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/announcements/general_announcement/general_announcement.dart';
import 'package:staugustinechsnewapp/models/home/spirit_meters/spirit_meters.dart';
import 'package:staugustinechsnewapp/models/home/verse_of_day/verse_of_day.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/home/announcements_board.dart';
import 'package:staugustinechsnewapp/widgets/home/chaplaincy_corner.dart';
import 'package:staugustinechsnewapp/widgets/home/featured_cafe_items.dart';
import 'package:staugustinechsnewapp/widgets/home/spirit_meter.dart';
import 'package:staugustinechsnewapp/widgets/home/welcome_banner.dart';

class HomeScreen extends StatefulWidget {
  final int? dayNumber;
  final String? userName;
  final List<GeneralAnnouncement>? generalAnnouncements;
  final List<Map<String, String>>? featuredCafeItems;
  final SpiritMeters? spiritMeters;
  final VerseOfDay? verseOfDay;

  const HomeScreen({
    Key? key,
    this.dayNumber,
    this.userName,
    this.generalAnnouncements,
    this.featuredCafeItems,
    this.spiritMeters,
    this.verseOfDay,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Styles.mainOutsidePadding,
      children: <Widget>[
        const SizedBox(height: Styles.mainVerticalPadding),
        WelcomeBanner(
          dayNumber: widget.dayNumber,
          userName: widget.userName,
        ),
        const SizedBox(height: Styles.mainSpacing),
        AnnouncementsBoard(
          announcements: widget.generalAnnouncements,
        ),
        const SizedBox(height: Styles.mainSpacing),
        FeaturedCafeItems(cafeItems: widget.featuredCafeItems ?? []),
        const SizedBox(height: Styles.mainSpacing),
        SpiritMeterBars(
          spiritMeters: widget.spiritMeters,
        ),
        const SizedBox(height: Styles.mainSpacing),
        ChaplaincyCorner(verseOfDay: widget.verseOfDay),
        const SizedBox(height: Styles.mainVerticalPadding),
      ],
    );
  }
}