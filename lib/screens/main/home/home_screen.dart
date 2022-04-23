import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/announcements/general_announcement/announcement.dart';
import 'package:staugustinechsnewapp/models/cafe_menu/cafe_menu_item/cafe_menu_item.dart';
import 'package:staugustinechsnewapp/models/home/spirit_meters/spirit_meters.dart';
import 'package:staugustinechsnewapp/models/home/verse_of_day/verse_of_day.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/widgets/reusable/announcements_board.dart';
import 'package:staugustinechsnewapp/widgets/home/chaplaincy_corner.dart';
import 'package:staugustinechsnewapp/widgets/home/featured_cafe_items.dart';
import 'package:staugustinechsnewapp/widgets/home/spirit_meter.dart';
import 'package:staugustinechsnewapp/widgets/home/welcome_banner.dart';
import 'package:staugustinechsnewapp/widgets/reusable/dev_print.dart';

class HomeScreen extends StatelessWidget {
  final Function() onRefresh;
  final NavBloc navBloc;
  final int? dayNumber;
  final String? userName;
  final List<Announcement>? generalAnnouncements;
  final List<CafeMenuItem>? featuredCafeItems;
  final SpiritMeters? spiritMeters;
  final VerseOfDay? verseOfDay;
  final Function()? onPressAddAnnouncementStaff;
  final bool isDev;

  const HomeScreen({
    Key? key,
    required this.onRefresh,
    required this.navBloc,
    this.dayNumber,
    this.userName,
    this.generalAnnouncements,
    this.featuredCafeItems,
    this.spiritMeters,
    this.verseOfDay,
    this.onPressAddAnnouncementStaff,
    this.isDev = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      onRefresh: onRefresh,
      listView: true,
      children: [
        WelcomeBanner(
          dayNumber: dayNumber,
          userName: userName,
        ),
        const SizedBox(height: Styles.mainSpacing),
        AnnouncementsBoard(
          announcements: generalAnnouncements,
          onPressAddAnnouncement: onPressAddAnnouncementStaff,
        ),
        const SizedBox(height: Styles.mainSpacing),
        FeaturedCafeItems(cafeItems: featuredCafeItems ?? [], navBloc: navBloc),
        const SizedBox(height: Styles.mainSpacing),
        SpiritMeterBars(
          spiritMeters: spiritMeters,
        ),
        const SizedBox(height: Styles.mainSpacing),
        ChaplaincyCorner(verseOfDay: verseOfDay),
        if (isDev) ...[
          const SizedBox(height: Styles.mainSpacing),
          const DevPrint()
        ]
      ],
    );
  }
}
