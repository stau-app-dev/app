import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/announcements/club_announcement/club_announcement.dart';
import 'package:staugustinechsnewapp/models/socials/club/club.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/announcements_board.dart';
import 'package:staugustinechsnewapp/widgets/socials/club_description.dart';

class ClubScreen extends StatelessWidget {
  final Club? club;
  final List<ClubAnnouncement>? clubAnnouncements;
  final Function() onRefresh;
  final Function() onPressJoin;
  final Function()? onPressAddAnnouncement;

  const ClubScreen({
    Key? key,
    required this.club,
    required this.clubAnnouncements,
    required this.onRefresh,
    required this.onPressJoin,
    this.onPressAddAnnouncement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ClubAnnouncement> data;

    if (clubAnnouncements != null && clubAnnouncements!.isNotEmpty) {
      data = clubAnnouncements!;
    } else {
      data = [];
    }

    return PageLayout(
      verticalPadding: 0,
      listView: true,
      onRefresh: onRefresh,
      children: [
        Align(
            alignment: Alignment.topRight,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings_rounded,
                  color: Styles.white,
                ))),
        const SizedBox(height: 85.0),
        Text(club?.name ?? '', style: Styles.headerMainText),
        const SizedBox(height: 125.0),
        ClubDescription(
          description: club?.description ?? '',
          onPressJoin: onPressJoin,
        ),
        const SizedBox(height: 20.0),
        AnnouncementsBoard(
          clubAnnouncements: data,
          isClubScreen: true,
          onPressAddAnnouncement: onPressAddAnnouncement,
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
